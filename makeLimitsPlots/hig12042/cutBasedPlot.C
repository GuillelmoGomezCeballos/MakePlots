{

  TFile *_file0 = TFile::Open("ana_HCP_cutbased_8TeV_from110to600_logx1_logy1.root");
  ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->Draw();

  const int nPoints = 21;
  float x_cut[nPoints]      = {110,115,120,125,130,135,140,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_cut[nPoints]     = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_cut[nPoints]      = {7.90,4.22,2.40,1.75,1.27,0.95,0.78,0.36,0.19,0.18,0.22,0.34,0.46,0.91,0.94,0.84,0.89,1.01,1.27,1.47,1.66};
  float ye_cutDown[nPoints] = {1.31,1.16,0.48,0.44,0.31,0.23,0.18,0.09,0.03,0.02,0.03,0.07,0.10,0.21,0.22,0.17,0.16,0.25,0.33,0.37,0.45};
  float ye_cutUp[nPoints]   = {3.06,1.10,0.38,0.41,0.27,0.20,0.19,0.12,0.05,0.05,0.09,0.14,0.17,0.33,0.32,0.29,0.33,0.45,0.75,0.80,0.95};
  TGraphAsymmErrors cut(nPoints, x_cut, y_cut, xe_cut, xe_cut, ye_cutDown, ye_cutUp);
  cut.SetFillColor(kMagenta);
  cut.SetFillStyle(3356);
  cut.SetLineColor(kRed);
  cut.SetLineWidth(2);
  cut.Draw("3");
  cut.Draw("PXL");

  TLegend* leg = (TLegend*) ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&cut,"signal injection m_{H}=125 GeV #pm 2#sigma (stat.)","l");
  leg->Draw();

  TGraph* gr = (TGraph*) ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

  ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_cut_from110to600_logx1_logy1.pdf");
  ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_cut_from110to600_logx1_logy1.eps");
  ana_HCP_cutbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_cut_from110to600_logx1_logy1.png");
}
