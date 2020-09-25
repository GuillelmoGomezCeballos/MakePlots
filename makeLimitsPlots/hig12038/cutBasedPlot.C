{

  TFile *_file0 = TFile::Open("limit8TeV_cut_from110to600_logx1_logy1.root");
  limit8TeV_cut_from110to600_logx1_logy1->Draw();

  float x_cut[22]  = {110,115,120,125,130,135,140,145,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_cut[22] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_cut[22]  = {10.24,5.04,3.02,1.97,1.46,1.07,0.85,0.70,0.42,0.23,0.22,0.27,0.37,0.45,0.90,1.14,1.08,1.19,1.31,1.60,2.32,3.40};
  float ye_cut[22] = {1.79,1.11,0.62,0.40,0.24,0.19,0.16,0.13,0.09,0.04,0.04,0.06,0.09,0.11,0.25,0.26,0.28,0.32,0.36,0.50,0.80,1.05};

  TGraphErrors cut(22,x_cut,y_cut,xe_cut,ye_cut);
  cut.SetFillColor(kBlue);
  cut.SetFillStyle(3002);
  cut.SetLineColor(kRed);
  cut.SetLineWidth(2);
  cut.Draw("3");
  cut.Draw("PXL");

  TLegend* leg = (TLegend*) limit8TeV_cut_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&cut,"signal injection m_{H}=125 GeV #pm 1#sigma","l");
  leg->Draw();

  TGraph* gr = (TGraph*) limit8TeV_cut_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

}
