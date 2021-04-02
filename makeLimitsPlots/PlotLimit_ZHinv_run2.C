#include <TAxis.h>
#include <TCanvas.h>
#include <TFrame.h>
#include <TGraphAsymmErrors.h>
#include <TLatex.h>
#include <TLegend.h>
#include <TLine.h>
#include <TString.h>
#include <TSystem.h>

#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

#include "tdrstyle.C"
#include "CMS_lumi.C"


Bool_t verbose = false;

void DrawTLatex(Double_t x, Double_t y, Double_t tsize, const char* text);

void PlotLimit_ZHinv_run2(
               string  limitFiles   = "inputs/ana_ICHEP_limits_nj_shape7teV_cut8TeV.txt",
	       string  outputPrefix = "combined",
	       Int_t   year         = 2019,
	       Float_t mhmin        = 110,
	       Float_t mhmax        = 160,
	       Int_t   setLogx      = 0,
	       Int_t   setLogy      = 1,
	       string  title        = "H #rightarrow WW #rightarrow 2l2#nu",
	       Bool_t  drawObserved = 1,
	       Int_t   ratio        = 0,
	       string  format       = "pdf",
	       string  addText      = "dummy")
{
  setTDRStyle();


  gSystem->mkdir(format.c_str(), kTRUE);


  // Get input files
  //----------------------------------------------------------------------------
  stringstream fnames(limitFiles);
  string fname;
  vector<string> LimitFile;

  while (getline(fnames, fname, ',')) {
    if (verbose) printf(" Using file(s) %s\n", fname.c_str());
    LimitFile.push_back(fname);
  }


  // Read in the nominal limits
  //----------------------------------------------------------------------------
  vector<float> vMass;
  vector<float> vObsLimit; 
  vector<float> vTheoryLimit; 
  vector<float> vMedianExpLimit; 
  vector<float> vExpLim68Down; 
  vector<float> vExpLim68Up; 
  vector<float> vExpLim95Down; 
  vector<float> vExpLim95Up;

  float Mass;
  float ObsLimit; 
  float TheoryLimit; 
  float MedianExpLimit; 
  float ExpLim68Down; 
  float ExpLim68Up; 
  float ExpLim95Down; 
  float ExpLim95Up;

  ifstream indata;
  indata.open(LimitFile[0].c_str());
  if (!indata) {
    cerr << " Error: file could not be opened" << endl;
    return;
  }

  while (indata
	 >> Mass
	 >> ObsLimit
	 >> TheoryLimit
	 >> MedianExpLimit
	 >> ExpLim95Down
	 >> ExpLim68Down
	 >> ExpLim68Up
	 >> ExpLim95Up) {

    vMass          .push_back(Mass);
    vObsLimit      .push_back(ObsLimit); 
    vTheoryLimit   .push_back(TheoryLimit); 
    vMedianExpLimit.push_back(MedianExpLimit); 
    vExpLim68Down  .push_back(ExpLim68Down); 
    vExpLim68Up    .push_back(ExpLim68Up); 
    vExpLim95Down  .push_back(ExpLim95Down); 
    vExpLim95Up    .push_back(ExpLim95Up);
  }

  UInt_t npoints = vMass.size();


  // Draw
  //----------------------------------------------------------------------------
  TString ctitle = Form("%s_from%.0fto%.0f_logx%d_logy%d",
			outputPrefix.c_str(),
			mhmin,
			mhmax,
			setLogx,
			setLogy);

  //TCanvas* canvas = new TCanvas(ctitle, ctitle);
  TCanvas* canvas = new TCanvas(ctitle, ctitle, 600, 600, 600, 600);

  canvas->SetLeftMargin  (1.30 * canvas->GetLeftMargin());
  canvas->SetRightMargin (2.10 * canvas->GetRightMargin());
  canvas->SetBottomMargin(1.35 * canvas->GetBottomMargin());

  canvas->SetLogx(setLogx);
  canvas->SetLogy(setLogy);

  float min = +9999;
  float max = -9999;


  // Expected Limit
  //----------------------------------------------------------------------------
  float y_th[npoints];
  float x   [npoints];
  float ex  [npoints];
  float y   [npoints];
  float yu68[npoints];
  float yd68[npoints];
  float yu95[npoints];
  float yd95[npoints]; 
  
  for (UInt_t i=0; i<npoints; ++i) {

    x [i] = vMass.at(i);
    ex[i] = 0; 

    y_th[i] = vTheoryLimit.at(i);
    y   [i] = vMedianExpLimit.at(i);
    yu68[i] = vExpLim68Up.at(i) - y[i];
    yu95[i] = vExpLim95Up.at(i) - y[i];   
    yd68[i] = y[i] - vExpLim68Down.at(i);  
    yd95[i] = y[i] - vExpLim95Down.at(i);  

    if (ratio == 1) {
      y   [i] /= vMedianExpLimit.at(i);
      yu68[i] /= vMedianExpLimit.at(i);
      yu95[i] /= vMedianExpLimit.at(i);
      yd68[i] /= vMedianExpLimit.at(i);
      yd95[i] /= vMedianExpLimit.at(i);
    }
    else if (ratio == 13)  y_th[i] = y_th[i]/2.0;

    if (y[i] + yu95[i] > max) max = y[i] + yu95[i];
    if (y[i] - yd95[i] < min) min = y[i] - yd95[i]; // 0.01;
  }
  if(setLogy == 0) min =0.01;


  TGraph*            ExpTheory = new TGraph           (npoints, x, y_th);
  TGraph*            ExpLim    = new TGraph           (npoints, x, y);
  TGraphAsymmErrors* ExpBand95 = new TGraphAsymmErrors(npoints, x, y, ex, ex, yd95, yu95);
  TGraphAsymmErrors* ExpBand68 = new TGraphAsymmErrors(npoints, x, y, ex, ex, yd68, yu68);
  TGraph*            Dummy     = new TGraph           (npoints, x, y_th);

  ExpBand95->GetXaxis()->SetRangeUser(mhmin, mhmax);


  // Cosmetics
  //----------------------------------------------------------------------------
  ExpBand95->SetTitle("");

  if     (ratio != 6 && ratio != 7 && ratio != 9 && ratio != 11 && ratio != 12 && ratio != 14 && ratio != 15 && ratio != 16 && ratio != 17) ExpBand95->GetXaxis()->SetTitle("m_{H} [GeV]");
  else if(ratio ==  9) ExpBand95->GetXaxis()->SetTitle("c#tau_{#chi_{1}^{0}} (mm)");
  else if(ratio == 11) ExpBand95->GetXaxis()->SetTitle("Scaling dimension d_{U}");
  else if(ratio == 12) ExpBand95->GetXaxis()->SetTitle("M_{D} [TeV]");
  else if(ratio == 14) ExpBand95->GetXaxis()->SetTitle("Coupling");
  else if(ratio == 15) ExpBand95->GetXaxis()->SetTitle("m_{H_{5}} [GeV]");
  else if(ratio == 16) ExpBand95->GetXaxis()->SetTitle("m_{H^{++}} [GeV]");
  else if(ratio == 17) ExpBand95->GetXaxis()->SetTitle("m_{H^{+}} [GeV]");
  else                 ExpBand95->GetXaxis()->SetTitle("#chi_{1}^{0} mass [GeV]");

  if (ratio == 0) ExpBand95->GetYaxis()->SetTitle("95% CL limit on #sigma/#sigma_{SM}");
  if (ratio == 1) ExpBand95->GetYaxis()->SetTitle("ratio to expected");
  if (ratio == 3) ExpBand95->GetYaxis()->SetTitle("#sigma #times #bf{#it{#Beta}}(H #rightarrow WW #rightarrow 2l2#nu) [pb]");
  if (ratio == 4) ExpBand95->GetYaxis()->SetTitle("#sigma #times #bf{#it{#Beta}}(H #rightarrow invisible)/#sigma_{SM}");
  if (ratio == 5) ExpBand95->GetYaxis()->SetTitle("#sigma_{qq #rightarrow ZH} #times #bf{#it{#Beta}}(H #rightarrow inv.) [pb]");
  if (ratio ==10) ExpBand95->GetYaxis()->SetTitle("#sigma_{ZH} #times #bf{#it{#Beta}}(H #rightarrow inv.+#gamma) [pb]");
  if (ratio ==11) ExpBand95->GetYaxis()->SetTitle("#sigma(pp #rightarrow ZU) [pb]");
  if (ratio ==12) ExpBand95->GetYaxis()->SetTitle("#sigma(pp #rightarrow GZ) [pb]");
  if (ratio ==13) ExpBand95->GetYaxis()->SetTitle("#sigma_{VBF} #times #bf{#it{#Beta}}(H #rightarrow inv.+#gamma) [pb]");
  if (ratio ==14) ExpBand95->GetYaxis()->SetTitle("#sigma / #sigma_{aQGC}");
  if (ratio ==15) ExpBand95->GetYaxis()->SetTitle("s_{H}");
  if (ratio ==16) ExpBand95->GetYaxis()->SetTitle("#sigma_{VBF}^{H^{++}} #times #bf{#it{#Beta}}(H^{++} #rightarrow W^{#pm}W^{#pm}) [pb]");
  if (ratio ==17) ExpBand95->GetYaxis()->SetTitle("#sigma_{VBF}^{H^{+}} #times #bf{#it{#Beta}}(H^{+} #rightarrow W^{#pm}Z) [pb]");
  if (ratio == 6 || ratio == 2 ||
      ratio == 9) ExpBand95->GetYaxis()->SetTitle("#sigma #times #bf{#it{#Beta}} / #sigma_{SM}");
  if (ratio == 7) ExpBand95->GetYaxis()->SetTitle("#sigma #times #bf{#it{#Beta}} [fb]");
  if (ratio == 8) ExpBand95->GetYaxis()->SetTitle("#sigma #times #bf{#it{#Beta}} [fb]");

  ExpBand95->GetXaxis()->SetLabelFont  (   42);
  ExpBand95->GetXaxis()->SetLabelOffset(0.010);
  ExpBand95->GetXaxis()->SetLabelSize  (0.040);
  ExpBand95->GetXaxis()->SetNdivisions (  505);
  ExpBand95->GetXaxis()->SetTitleFont  (   42);
  ExpBand95->GetXaxis()->SetTitleOffset( 1.00);
  ExpBand95->GetXaxis()->SetTitleSize  (0.050);
  ExpBand95->GetYaxis()->SetLabelFont  (   42);
  ExpBand95->GetYaxis()->SetLabelOffset(0.010);
  ExpBand95->GetYaxis()->SetLabelSize  (0.040);
  ExpBand95->GetYaxis()->SetNdivisions (  505);
  ExpBand95->GetYaxis()->SetTitleFont  (   42);
  ExpBand95->GetYaxis()->SetTitleSize  (0.050);
  ExpBand95->GetYaxis()->SetTitleOffset( 1.25);

  //ExpBand95->GetXaxis()->SetTitleOffset(1.20);
  //ExpBand95->GetYaxis()->SetTitleOffset(1.60);
  //ExpBand95->GetYaxis()->SetTitleSize(0.041);
  //ExpBand95->GetYaxis()->SetNdivisions(505);

  ExpTheory->SetLineStyle(4);
  ExpTheory->SetLineWidth(4);
  ExpTheory->SetLineColor(9);

  ExpBand68->SetFillColor(kGreen+1); 
  ExpBand68->SetLineColor(1);
  ExpBand68->SetLineStyle(2);
  ExpBand68->SetLineWidth(2);

  ExpBand95->SetFillColor(kOrange); 
  ExpBand95->SetLineColor(1);
  ExpBand95->SetLineStyle(2);
  ExpBand95->SetLineWidth(2);

  ExpLim->SetLineColor(1);
  ExpLim->SetLineStyle(2);
  ExpLim->SetLineWidth(2);

  Dummy->SetLineStyle(1);
  Dummy->SetLineWidth(3);
  Dummy->SetLineColor(16);

  ExpBand95->Draw("a3");
  ExpBand68->Draw("3");
  ExpLim   ->Draw("l");
  ExpTheory->Draw("c");

  double mH_exclTH[10] = {500, 600, 700, 800, 900, 1000, 1500, 2000, 2000, 500};
  double shExclTH[10] = {1.1928, 0.9709, 0.8204, 0.7113, 0.6282, 0.5628, 0.3711, 0.2774, 1., 1.};
  TGraph *ExclTH = new TGraph(10,mH_exclTH,shExclTH);
  if (ratio ==15) {
    ExclTH->SetFillColorAlpha(kBlue-7,0.75);
    //ExclTH->SetFillStyle(3001);
    ExclTH->Draw("FL");
  }

  // Observed limit
  //----------------------------------------------------------------------------
  TGraph* ObsLim = NULL;

  if (drawObserved) {

    float yObs[npoints];    

    for (UInt_t i=0; i<npoints; ++i) {

      yObs[i] = vObsLimit.at(i);

      if (ratio == 1) {
	yObs[i] /= vMedianExpLimit.at(i);
      }

      if (yObs[i] > max) max = yObs[i];
      if (yObs[i] < min) min = yObs[i];
    }

    ObsLim = new TGraph(npoints, x, yObs);
    ObsLim->SetLineWidth(4);
    ObsLim->SetMarkerStyle(kFullCircle);
    ObsLim->Draw("l");
  }


  // y-axis
  //----------------------------------------------------------------------------
  double theRange[2] = {0,1};
  if (canvas->GetLogy()) {
    theRange[0] = min*0.90; 
    if     (ratio == 10) theRange[1] = max+1.25; 
    else if(ratio == 11) theRange[1] = max+200; 
    else if(ratio == 13) theRange[1] = max+10; 
    else if(ratio == 16) theRange[1] = 0.8; 
    else if(ratio == 17) theRange[1] = 3.5; 
    else                 theRange[1] = max+100;
  }
  else {
    theRange[0] = min-0.0; theRange[1] = max+1;
    if(ratio == 12) {theRange[0] = 0.0; theRange[1] = max+0.05;}
    if      (ratio == 6 || ratio == 2) {theRange[0] = min-0.0; theRange[1] = max+0.4;}
    else if (ratio == 7)               {theRange[0] = min-0.0; theRange[1] = max+10;}
    else if (ratio == 8)               {theRange[0] = min-0.0; theRange[1] = max+10;}
    else if (ratio == 14)              {theRange[0] = 0.0; theRange[1] = 3;}
    else if (ratio == 15)              {theRange[0] = 0.0; theRange[1] = 1;}
  }
  ExpBand95->GetYaxis()->SetRangeUser(theRange[0],theRange[1]);

  // canvas dimensions
  //----------------------------------------------------------------------------
  canvas->Update();

  Float_t uxmin = canvas->GetUxmin();
  Float_t uxmax = canvas->GetUxmax();
  Float_t uymin = canvas->GetUymin();


  // x-axis ticks
  //----------------------------------------------------------------------------
  if (canvas->GetLogx() && ratio != 9) {

    ExpBand95->GetXaxis()->SetNdivisions(0);

    TLine tick;

    tick.SetLineWidth(1);
    tick.SetLineColor(1);

    for (Int_t i=100; i<=1000; i+=100) {
	
      if (i < mhmin || i > mhmax) continue;

      Float_t xx = i;

      if (canvas->GetLogy())
        tick.DrawLine(xx, pow(10,uymin), xx, pow(10,uymin) + (i%100 == 0 ? 0.025 : 0.005));
      else
        tick.DrawLine(xx, uymin, xx, uymin + (i%100 == 0 ? 0.05 : 0.05));
    }
    if (!canvas->GetLogy())
      tick.DrawLine(125, uymin, 125, uymin + (125%100 == 0 ? 0.05 : 0.05));

    TLine smBar;
    smBar.SetLineWidth(4);
    smBar.SetLineColor(16);
    smBar.DrawLine(125, theRange[0], 125, theRange[1]);

    // TLatex
    //--------------------------------------------------------------------------
    Float_t ylatex = (canvas->GetLogy()) ? pow(10,uymin) - 0.01 : uymin - 0.1;

    Float_t xbins[7] = {125, 200, 300, 400, 600, 800, 1000};

    while (mhmin > xbins[0]) xbins[0] += 10;

    for (Int_t i=0; i<7; i++) {
      
      if (xbins[i] < mhmin || xbins[i] > mhmax) continue;
    
      TLatex* latex = new TLatex(xbins[i], ylatex, Form("%.0f", xbins[i]));
      
      latex->SetTextAlign(  22);
      latex->SetTextFont (  42);
      latex->SetTextSize (0.030);
    
      latex->Draw("same");
    }
  }

  if(year==2019&&ratio==13) CMS_lumi(canvas, 2020, 1); 
  else CMS_lumi(canvas, year, 1);

  double legX1 = 0.60; double legX2 = 0.80;
  double legY1 = 0.66; double legY2 = 0.88;
  double size = 0.035;
  if     (ratio == 11) {legX1 = 0.55; legX2 = 0.75; }
  else if(ratio == 14) {legX1 = 0.70; legX2 = 0.80; }
  else if(ratio == 15) {legX1 = 0.16; legX2 = 0.36; legY1 = 0.56; legY2 = 0.76; size = 0.030;}
  TLegend* leg = new TLegend(legX1, legY1, legX2, legY2, "");

  leg->SetBorderSize(   0);
  leg->SetFillColor (   0);
  leg->SetFillStyle (   0);
  leg->SetTextFont  (  62);
  leg->SetTextSize  (size);

  if(strcmp(title.c_str(),"") != 0) {
    if(ratio == 13) DrawTLatex(0.216, 0.75, 0.035, title.c_str());
    else            DrawTLatex(legX1, 0.60, 0.035, title.c_str());
  }

  if(ObsLim != NULL)
  leg->AddEntry(ObsLim,    " Observed", "l");
  //leg->AddEntry(ExpLim,    " Median expected",      "l");
  //leg->AddEntry(ExpBand68, " Expected #pm 1#sigma", "f");
  //leg->AddEntry(ExpBand95, " Expected #pm 2#sigma", "f");
  leg->AddEntry(ExpBand68, " 68\% expected", "lf");
  leg->AddEntry(ExpBand95, " 95\% expected", "lf");
  if     (ratio == 10) leg->AddEntry(ExpTheory, " 0.1 #times #sigma_{ZH}^{SM}","l");
  else if(ratio == 11) leg->AddEntry(ExpTheory, " Theory, #Lambda_{U} = 15 TeV","l");
  else if(ratio == 12) leg->AddEntry(ExpTheory, Form(" Theory, LO, n = %s",addText.c_str()),"l");
  else if(ratio == 13) leg->AddEntry(ExpTheory, " 0.05 #times #sigma_{VBF}","l");
  else if(ratio == 14) leg->AddEntry(ExpTheory, Form(" Theory, %s",addText.c_str()),"l");
  else if(ratio == 15) {  leg->AddEntry( ExclTH   , "#Gamma(H_{5})/#it{m}(H_{5}) > 0.1",  "F" ); }
  else if(ratio == 16) leg->AddEntry(ExpTheory, Form("#sigma_{GM}^{H^{++}}, s_{H} = 1"),"l");
  else if(ratio == 17) leg->AddEntry(ExpTheory, Form("#sigma_{GM}^{H^{+}}, s_{H} = 1"),"l");
  else                 leg->AddEntry(ExpTheory, " #sigma_{qq #rightarrow ZH}^{SM}","l");
  if(ratio == 5)  leg->AddEntry(Dummy,     " #sigma #bf{#it{#Beta}}(H #rightarrow inv.)/#sigma_{SM} < 0.45 (0.44) at 95% CL","l");

  leg->Draw("same");


  // Unit line
  //----------------------------------------------------------------------------
  canvas->Update();

  if (!ratio || ratio == 4) {

    TLine *line = NULL;

    if (canvas->GetLogx())
      line = new TLine(pow(10,uxmin), 1, pow(10,uxmax), 1);
    else
      line = new TLine(uxmin, 1, uxmax, 1);

    line->SetLineColor(kRed+1);
    line->SetLineWidth(2);
    line->Draw("same");

    if(ObsLim != NULL)
    ObsLim->Draw("same");
  }
    

  // Save
  //----------------------------------------------------------------------------
  canvas->GetFrame()->DrawClone();
  canvas->RedrawAxis();
  canvas->Update();

  if(ratio == 7) ctitle = Form("%s_xs",ctitle.Data());
  if(ratio == 8) ctitle = Form("%s_xs",ctitle.Data());

  canvas->SaveAs(Form("%s/%s.%s", format.c_str(), ctitle.Data(), format.c_str()));
}


//------------------------------------------------------------------------------
// DrawTLatex
//------------------------------------------------------------------------------
void DrawTLatex(Double_t x, Double_t y, Double_t tsize, const char* text)
{
  TLatex* tl = new TLatex(x, y, text);

  tl->SetNDC();
  tl->SetTextAlign(   12);
  tl->SetTextFont (   62);
  tl->SetTextSize (tsize);

  tl->Draw("same");
}
