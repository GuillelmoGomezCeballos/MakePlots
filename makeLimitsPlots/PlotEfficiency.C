#include <TAxis.h>
#include <TCanvas.h>
#include <TFrame.h>
#include <TGraphErrors.h>
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

void PlotEfficiency(
               string  limitFiles   = "inputs/ana_ICHEP_limits_nj_shape7teV_cut8TeV.txt",
	       string  outputPrefix = "combined",
	       Int_t   year         = 2019,
	       Float_t mhmin        = 110,
	       Float_t mhmax        = 160,
	       Int_t   setLogx      = 0,
	       Int_t   setLogy      = 1,
	       string  title        = "H #rightarrow WW #rightarrow 2l2#nu",
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
  vector<float> vTest0; 
  vector<float> vTest1; 
  vector<float> vTest2; 
  vector<float> vTest3; 
  vector<float> vTest4; 

  float Mass;
  float Test0;
  float Test1;
  float Test2;
  float Test3;
  float Test4;

  ifstream indata;
  indata.open(LimitFile[0].c_str());
  if (!indata) {
    cerr << " Error: file could not be opened" << endl;
    return;
  }

  while (indata
	 >> Mass
	 >> Test0
	 >> Test1
	 >> Test2
	 >> Test3
	 >> Test4) {

    vMass .push_back(Mass);
    vTest0.push_back(Test0); 
    vTest1.push_back(Test1); 
    vTest2.push_back(Test2); 
    vTest3.push_back(Test3); 
    vTest4.push_back(Test4); 
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

  float min = +99;
  float max = -99;
  float theMax = 99;

  //----------------------------------------------------------------------------
  float x       [npoints];
  float ex      [npoints];
  float y_test0 [npoints];
  float y_test1 [npoints];
  float y_test2 [npoints];
  float y_test3 [npoints];
  float y_test4 [npoints];
  float ey_test0[npoints];
  float ey_test1[npoints];
  float ey_test2[npoints];
  float ey_test3[npoints];
  float ey_test4[npoints];
  float rel_unc[2] = {0, 0};
  if(ratio == 2) {rel_unc[0] = 0.0833; rel_unc[1] = 0.0905;}

  for (UInt_t i=0; i<npoints; ++i) {

    x[i] = vMass.at(i);
    ex[i] = 0;

    y_test0[i] = vTest0.at(i);
    y_test1[i] = vTest1.at(i);
    y_test2[i] = vTest2.at(i);
    y_test3[i] = vTest3.at(i);
    y_test4[i] = vTest4.at(i);

    ey_test0[i] = vTest0.at(i)*rel_unc[0];
    ey_test1[i] = vTest1.at(i)*rel_unc[1];
    ey_test2[i] = vTest2.at(i)*rel_unc[1];
    ey_test3[i] = vTest3.at(i)*rel_unc[1];
    ey_test4[i] = vTest4.at(i)*rel_unc[1];

    if (y_test0[i] > max && y_test0[i] < theMax) max = y_test0[i];
    if (y_test1[i] > max && y_test1[i] < theMax) max = y_test1[i];
    if (y_test2[i] > max && y_test2[i] < theMax) max = y_test2[i];
    if (y_test3[i] > max && y_test3[i] < theMax) max = y_test3[i];
    if (y_test4[i] > max && y_test4[i] < theMax) max = y_test4[i];

    if (y_test0[i] < min) min = y_test0[i];
    if (y_test1[i] < min) min = y_test1[i];
    if (y_test2[i] < min) min = y_test2[i];
    if (y_test3[i] < min) min = y_test3[i];
    if (y_test4[i] < min) min = y_test4[i];
  }

  TGraphErrors* ExpTest0 = new TGraphErrors(npoints, x, y_test0, ex, ey_test0);
  TGraphErrors* ExpTest1 = new TGraphErrors(npoints, x, y_test1, ex, ey_test1);
  TGraphErrors* ExpTest2 = new TGraphErrors(npoints, x, y_test2, ex, ey_test2);
  TGraphErrors* ExpTest3 = new TGraphErrors(npoints, x, y_test3, ex, ey_test3);
  TGraphErrors* ExpTest4 = new TGraphErrors(npoints, x, y_test4, ex, ey_test4);

  ExpTest0->GetXaxis()->SetRangeUser(mhmin, mhmax);

  // Cosmetics
  //----------------------------------------------------------------------------
  ExpTest0->SetTitle("");

  if   (ratio == 2) ExpTest0->GetXaxis()->SetTitle("m_{H_{5}} [GeV]");
  else              ExpTest0->GetXaxis()->SetTitle("m_{H_{5}} [GeV]");

  if     (ratio == 0 || ratio == 1) ExpTest0->GetYaxis()->SetTitle("Expected limit ratio w.r.t. to default");
  else if(ratio == 2)               ExpTest0->GetYaxis()->SetTitle("Acceptance #times efficiency");

  ExpTest0->GetXaxis()->SetLabelFont  (   42);
  ExpTest0->GetXaxis()->SetLabelOffset(0.010);
  ExpTest0->GetXaxis()->SetLabelSize  (0.040);
  ExpTest0->GetXaxis()->SetNdivisions (  505);
  ExpTest0->GetXaxis()->SetTitleFont  (   42);
  ExpTest0->GetXaxis()->SetTitleOffset(  1.0);
  ExpTest0->GetXaxis()->SetTitleSize  (0.050);
  ExpTest0->GetYaxis()->SetLabelFont  (   42);
  ExpTest0->GetYaxis()->SetLabelOffset(0.010);
  ExpTest0->GetYaxis()->SetLabelSize  (0.040);
  ExpTest0->GetYaxis()->SetNdivisions (  505);
  ExpTest0->GetYaxis()->SetTitleFont  (   42);
  ExpTest0->GetYaxis()->SetTitleSize  (0.050);
  ExpTest0->GetYaxis()->SetTitleOffset( 1.25);

  ExpTest0->SetLineStyle(1);
  ExpTest0->SetLineWidth(4);
  ExpTest0->SetLineColor(1);

  ExpTest1->SetLineStyle(2);
  ExpTest1->SetLineWidth(4);
  ExpTest1->SetLineColor(2);

  ExpTest2->SetLineStyle(3);
  ExpTest2->SetLineWidth(4);
  ExpTest2->SetLineColor(3);

  ExpTest3->SetLineStyle(4);
  ExpTest3->SetLineWidth(4);
  ExpTest3->SetLineColor(4);

  ExpTest4->SetLineStyle(6);
  ExpTest4->SetLineWidth(4);
  ExpTest4->SetLineColor(6);

  ExpTest0->Draw("");
  ExpTest1->Draw("l,same");
  ExpTest2->Draw("l,same");
  ExpTest3->Draw("l,same");
  ExpTest4->Draw("l,same");

  // y-axis
  //----------------------------------------------------------------------------
  double theRange[2] = {0,1};
  if (canvas->GetLogy()) {
    theRange[0] = min*0.90; theRange[1] = max+1.25; 
  }
  else {
    theRange[0] = TMath::Max(min-0.06,0.0); theRange[1] = max+0.10;
  }
  ExpTest0->GetYaxis()->SetRangeUser(theRange[0],theRange[1]);

  // canvas dimensions
  //----------------------------------------------------------------------------
  canvas->Update();

  Float_t uxmin = canvas->GetUxmin();
  Float_t uxmax = canvas->GetUxmax();
  Float_t uymin = canvas->GetUymin();

  CMS_lumi(canvas, year, 1);

  double legX1 = 0.40; double legX2 = 0.70;
  double legY1 = 0.66; double legY2 = 0.88;
  double size = 0.030;
  TString label = "TEST";
  if     (ratio == 0) label = "H^{++} search";
  else if(ratio == 1) label = "H^{+} search";
  else if(ratio == 2) label = "H^{++}/H^{+}";
  TLegend* leg = new TLegend(legX1, legY1, legX2, legY2, label.Data());

  leg->SetBorderSize(   0);
  leg->SetFillColor (   0);
  leg->SetFillStyle (   0);
  leg->SetTextFont  (  62);
  leg->SetTextSize  (size);

  if(strcmp(title.c_str(),"") != 0) {
    if(ratio == 13) DrawTLatex(0.216, 0.75, 0.035, title.c_str());
    else            DrawTLatex(legX1, 0.60, 0.035, title.c_str());
  }

  if     (ratio == 0 || ratio == 1){
    leg->AddEntry(ExpTest0, " Test1: BDT instead of m_{jj}", "l");
    leg->AddEntry(ExpTest1, " Test2: reducing m_{T} bins", "l");
    leg->AddEntry(ExpTest2, " Test3: increasing m_{T} bins", "l");
    leg->AddEntry(ExpTest3, " Test4: increasing m_{jj} bins", "l");
    leg->AddEntry(ExpTest4, " Test5: fitting WW/WZ normalization", "l");
  }
  else if(ratio == 2){
    leg->AddEntry(ExpTest0, " H^{++} #rightarrow W^{+}W^{+} #rightarrow l#nul#nu", "l");
    leg->AddEntry(ExpTest1, " H^{+} #rightarrow W^{+}Z #rightarrow 3l#nu", "l");
  }
  else {
  }

  leg->Draw("same");

  // Unit line
  //----------------------------------------------------------------------------
  canvas->Update();

  // Save
  //----------------------------------------------------------------------------
  canvas->GetFrame()->DrawClone();
  canvas->RedrawAxis();
  canvas->Update();

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
