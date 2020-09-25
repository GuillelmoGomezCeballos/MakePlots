{

  TFile *_file0 = TFile::Open("combined_from110to600_logx1_logy1.root");
  combined_from110to600_logx1_logy1->Draw();

  
  float x_combine[21]  = {110,115,120,125,130,135,140,150,160,170,180,190,200,250,300,350,400,450,500,550,600};
  float xe_combine[22] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  float y_combine[21]  = {4.35,3.66,2.50,1.71,1.23,0.86,0.70,0.37,0.17,0.17,0.21,0.29,0.37,0.73,0.70,0.57,0.53,0.69,0.97,1.16,2.15}; 
  float ye_combine[21] = {1.52,1.00,0.60,0.36,0.29,0.20,0.16,0.09,0.03,0.03,0.05,0.08,0.11,0.17,0.19,0.24,0.27,0.31,0.44,0.59,1.03};

  TGraphErrors combine(21,x_combine,y_combine,xe_combine,ye_combine);
  combine.SetFillColor(kBlue);
  combine.SetFillStyle(3002);
  combine.SetLineColor(kRed);
  combine.SetLineWidth(2);
  combine.Draw("3");
  combine.Draw("PXL");

  TLegend* leg = (TLegend*) combined_from110to600_logx1_logy1->GetPrimitive("TPave");
  leg->AddEntry(&combine,"signal injection m_{H}=125 GeV #pm 1#sigma","l");
  leg->Draw();

  TGraph* gr = (TGraph*) combined_from110to600_logx1_logy1->GetListOfPrimitives()->At(4);
  gr->Draw();

}
