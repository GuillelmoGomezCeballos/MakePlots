{

  TFile *_file0 = TFile::Open("limit8TeV_bdt_from110to600_logx1_logy1.root");
  limit8TeV_bdt_from110to600_logx1_logy1->Draw();


  float x_shape[22]  = {110,115,120,125,130,135,140,145,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_shape[22] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_shape[22]  = {5.39,4.45,2.86,1.92,1.39,1.04,0.81,0.60,0.40,0.20,0.20,0.25,0.36,0.41,0.86,0.96,0.75,0.70,0.97,1.35,1.71,2.98};
  float ye_shape[22] = {1.41,1.27,0.72,0.43,0.32,0.23,0.17,0.15,0.10,0.04,0.03,0.06,0.10,0.11,0.17,0.21,0.25,0.28,0.33,0.33,0.65,1.06};

  TGraphErrors shape(22,x_shape,y_shape,xe_shape,ye_shape);
  shape.SetFillColor(kBlue);
  shape.SetFillStyle(3002);
  shape.SetLineColor(kRed);
  shape.SetLineWidth(2);
  shape.Draw("3");
  shape.Draw("PXL");

  TLegend* leg = (TLegend*) limit8TeV_bdt_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&shape,"signal injection m_{H}=125 GeV #pm 1#sigma","l");
  leg->Draw();

  TGraph* gr = (TGraph*) limit8TeV_bdt_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

}
