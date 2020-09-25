{

  TFile *_file0 = TFile::Open("combined_wh3l_shape_from110to200_logx0_logy1.root");
  combined_wh3l_shape_from110to200_logx0_logy1->Draw();

  const int Npoints = 13;
  float x_cut[Npoints]  = {110,115,120,125,130,135,140,150,160,170,180,190,200};
  float xe_cut[Npoints] = {0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_cut[Npoints]  = {6.96,5.60,4.51,3.29,2.94,2.11,2.03,1.54,1.37,1.37,1.82,2.72,3.20};
  float ye_cut[Npoints] = {0,0,0,0,0,0,0,0,0,0,0,0,0};

  TGraphErrors cut(Npoints,x_cut,y_cut,xe_cut,ye_cut);
  cut.SetFillColor(kBlue);
  cut.SetFillStyle(3002);
  cut.SetLineColor(kBlue);
  cut.SetLineWidth(4);
  cut.Draw("3");
  cut.Draw("PXL");

  TLegend* leg = (TLegend*) combined_wh3l_shape_from110to200_logx0_logy1->GetPrimitive("TPave");
  leg->AddEntry(&cut,"with m_{H}=125 GeV signal","l");
  leg->Draw();

  TGraph* gr = (TGraph*) combined_wh3l_shape_from110to200_logx0_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

}
