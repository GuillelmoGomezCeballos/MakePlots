{

  TFile *_file0 = TFile::Open("ana_HCP_2dbased_8TeV_from110to600_logx1_logy1.root");
  ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->Draw();

  const int nPoints = 21;
  float x_shape[nPoints]      = {110,115,120,125,130,135,140,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_shape[nPoints]     = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_shape[nPoints]      = {7.05,3.88,2.39,1.55,1.09,0.82,0.65,0.34,0.18,0.17,0.20,0.28,0.33,0.45,0.58,0.52,0.55,0.69,0.90,1.09,1.25};
  float ye_shapeDown[nPoints] = {2.10,1.07,0.78,0.49,0.32,0.25,0.18,0.12,0.04,0.03,0.04,0.06,0.08,0.14,0.16,0.15,0.20,0.26,0.30,0.39,0.50};
  float ye_shapeUp[nPoints]   = {2.29,1.36,0.75,0.45,0.31,0.23,0.18,0.13,0.06,0.07,0.12,0.15,0.17,0.27,0.37,0.31,0.41,0.55,0.57,0.67,0.95};
  TGraphAsymmErrors shape(nPoints, x_shape, y_shape, xe_shape, xe_shape, ye_shapeDown, ye_shapeUp);
  shape.SetFillColor(kMagenta);
  shape.SetFillStyle(3356);
  shape.SetLineColor(kRed);
  shape.SetLineWidth(2);
  shape.Draw("3");
  shape.Draw("PXL");

  TLegend* leg = (TLegend*) ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&shape,"signal injection m_{H}=125 GeV #pm 2#sigma (stat.)","l");
  leg->Draw();

  TGraph* gr = (TGraph*) ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

  ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_bdt_from110to600_logx1_logy1.pdf");
  ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_bdt_from110to600_logx1_logy1.eps");
  ana_HCP_2dbased_8TeV_from110to600_logx1_logy1->SaveAs("limit8TeV_bdt_from110to600_logx1_logy1.png");
}
,
,
