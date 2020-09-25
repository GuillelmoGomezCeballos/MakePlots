{

  TFile *_file0 = TFile::Open("ana_HCP_2D_7p8TeV_from110to600_logx1_logy1.root");
  ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->Draw();

  const int nPoints = 21;
  float x_combine[nPoints]      = {110,115,120,125,130,135,140,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_combine[nPoints]     = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_combine[nPoints]      = {7.03,3.72,2.25,1.55,1.08,0.80,0.63,0.34,0.16,0.16,0.20,0.26,0.30,0.36,0.45,0.41,0.45,0.58,0.73,0.93,1.16};
  float ye_combineDown[nPoints] = {1.84,1.07,0.63,0.50,0.32,0.25,0.18,0.11,0.03,0.03,0.05,0.07,0.10,0.09,0.14,0.13,0.15,0.21,0.29,0.39,0.54};
  float ye_combineUp[nPoints]   = {2.52,1.41,0.51,0.43,0.25,0.23,0.17,0.11,0.09,0.08,0.11,0.19,0.21,0.27,0.36,0.37,0.42,0.67,0.79,0.85,1.03};
  TGraphAsymmErrors combine(nPoints, x_combine, y_combine, xe_combine, xe_combine, ye_combineDown, ye_combineUp);
  combine.SetFillColor(kMagenta);
  combine.SetFillStyle(3356);
  combine.SetLineColor(kRed);
  combine.SetLineWidth(2);
  combine.Draw("3");
  combine.Draw("PXL");

  TLegend* leg = (TLegend*) ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&combine,"signal injection m_{H}=125 GeV #pm 2#sigma (stat.)","l");
  leg->Draw();

  TGraph* gr = (TGraph*) ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

  ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->SaveAs("combined_from110to600_logx1_logy1.pdf");
  ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->SaveAs("combined_from110to600_logx1_logy1.eps");
  ana_HCP_2D_7p8TeV_from110to600_logx1_logy1->SaveAs("combined_from110to600_logx1_logy1.png");
}
