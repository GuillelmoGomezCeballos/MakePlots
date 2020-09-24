#!/bin/sh

if [ $# == 1 ] && [ $1 == 1 ]; then

# DF
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_0.root","ww0j_ww_mll",  0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_1.root","ww0j_ss_mll",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_2.root","ww0j_top_mll", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_3.root","ww0j_dy_mll",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_0.root","ww1j_ww_mll",  0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_1.root","ww1j_ss_mll",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_2.root","ww1j_top_mll", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_3.root","ww1j_dy_mll",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_0.root","ww2j_ww_mll",  0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_1.root","ww2j_ss_mll",  0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_2.root","ww2j_top_mll", 0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_3.root","ww2j_dy_mll",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_4.root","ww0j_ww_dphill",  0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_5.root","ww0j_ss_dphill",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_6.root","ww0j_top_dphill", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_7.root","ww0j_dy_dphill",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_4.root","ww1j_ww_dphill",  0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_5.root","ww1j_ss_dphill",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_6.root","ww1j_top_dphill", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_7.root","ww1j_dy_dphill",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_4.root","ww2j_ww_dphill",  0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_5.root","ww2j_ss_dphill",  0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_6.root","ww2j_top_dphill", 0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_7.root","ww2j_dy_dphill",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_8.root", "ww0j_ww_ptl1",  0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_9.root", "ww0j_ss_ptl1",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_10.root","ww0j_top_ptl1", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_11.root","ww0j_dy_ptl1",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_8.root", "ww1j_ww_ptl1",  0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_9.root", "ww1j_ss_ptl1",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_10.root","ww1j_top_ptl1", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_11.root","ww1j_dy_ptl1",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_8.root", "ww2j_ww_ptl1",  0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_9.root", "ww2j_ss_ptl1",  0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_10.root","ww2j_top_ptl1", 0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_11.root","ww2j_dy_ptl1",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_12.root","ww0j_ww_ptl2", 0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_13.root","ww0j_ss_ptl2", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_14.root","ww0j_top_ptl2",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_15.root","ww0j_dy_ptl2", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_12.root","ww1j_ww_ptl2", 0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_13.root","ww1j_ss_ptl2", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_14.root","ww1j_top_ptl2",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_15.root","ww1j_dy_ptl2", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_12.root","ww2j_ww_ptl2", 0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_13.root","ww2j_ss_ptl2", 0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_14.root","ww2j_top_ptl2",0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_15.root","ww2j_dy_ptl2", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_16.root","ww0j_ww_ptll", 0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_17.root","ww0j_ss_ptll", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_18.root","ww0j_top_ptll",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_19.root","ww0j_dy_ptll", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_16.root","ww1j_ww_ptll", 0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_17.root","ww1j_ss_ptll", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_18.root","ww1j_top_ptll",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_19.root","ww1j_dy_ptll", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_16.root","ww2j_ww_ptll", 0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_17.root","ww2j_ss_ptll", 0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_18.root","ww2j_top_ptll",0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_19.root","ww2j_dy_ptll", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_20.root","ww0j_ww_met", 0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_21.root","ww0j_ss_met", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_22.root","ww0j_top_met",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_23.root","ww0j_dy_met", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_20.root","ww1j_ww_met", 0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_21.root","ww1j_ss_met", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_22.root","ww1j_top_met",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_23.root","ww1j_dy_met", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_20.root","ww2j_ww_met", 0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_21.root","ww2j_ss_met", 0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_22.root","ww2j_top_met",0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_23.root","ww2j_dy_met", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_24.root","ww0j_ww_ht", 0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_25.root","ww0j_ss_ht", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_26.root","ww0j_top_ht",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_27.root","ww0j_dy_ht", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_24.root","ww1j_ww_ht", 0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_25.root","ww1j_ss_ht", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_26.root","ww1j_top_ht",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_27.root","ww1j_dy_ht", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_24.root","ww2j_ww_ht", 0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_25.root","ww2j_ss_ht", 0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_26.root","ww2j_top_ht",0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"H_{T}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_27.root","ww2j_dy_ht", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'


###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_28.root","ww0j_ww_mtww", 0,"H(125)",1.00,0,"WW DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_29.root","ww0j_ss_mtww", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_30.root","ww0j_top_mtww",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_31.root","ww0j_dy_mtww", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_28.root","ww1j_ww_mtww", 0,"H(125)",1.00,0,"WW DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_29.root","ww1j_ss_mtww", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_30.root","ww1j_top_mtww",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_31.root","ww1j_dy_mtww", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_28.root","ww2j_ww_mtww", 0,"H(125)",1.00,0,"WW DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_29.root","ww2j_ss_mtww", 0,"H(125)",1.00,0,"Same-sign DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_30.root","ww2j_top_mtww",0,"H(125)",1.00,0,"B tagged DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","TOPDF2J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice2_cr0_shapeType0_31.root","ww2j_dy_mtww", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 2 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwall_obs.root","WWDF2J")'

####root -l -q -b finalPlot.C+'(5,5,"p_{T}^{WW}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_32.root","ww_nojetcut_ptww",    0,"H(125)",1.00,0,"WW DF category","","",1,0)'

####root -l -q -b finalPlot.C+'(5,1,"Run","" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_33.root","ww_presel_runs",    0,"H(125)",1.00,0,"Preselection DF category","","",1,0)'

# SF
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_pt1.root",    "ww0j_sf_ww_ptl1",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_pt1.root",    "ww1j_sf_ww_ptl1",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_pt1.root", "ww0j_sf_top_ptl1", 0,"H(125)",1.00,0,"B tagged  SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_pt1.root", "ww1j_sf_top_ptl1", 0,"H(125)",1.00,0,"B tagged  SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_pt2.root",    "ww0j_sf_ww_ptl2",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_pt2.root",    "ww1j_sf_ww_ptl2",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_pt2.root", "ww0j_sf_top_ptl2", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_pt2.root", "ww1j_sf_top_ptl2", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_mll.root",    "ww0j_sf_ww_mll",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_mll.root",    "ww1j_sf_ww_mll",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_mll.root", "ww0j_sf_top_mll", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_mll.root", "ww1j_sf_top_mll", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_0jet_sf_dphill.root",	"ww0j_sf_ww_dphill",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_1jet_sf_dphill.root",	"ww1j_sf_ww_dphill",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_top0jet_sf_dphill.root", "ww0j_sf_top_dphill", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_top1jet_sf_dphill.root", "ww1j_sf_top_dphill", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_met.root",	 "ww0j_sf_ww_met",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_met.root",	 "ww1j_sf_ww_met",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_met.root", "ww0j_sf_top_met", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_met.root", "ww1j_sf_top_met", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

###root -l -q -b finalPlot.C+'(5,1,"m_{T}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_mth.root",    "ww0j_sf_ww_mt",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_mth.root",    "ww1j_sf_ww_mt",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_mth.root", "ww0j_sf_top_mt", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
###root -l -q -b finalPlot.C+'(5,1,"m_{T}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_mth.root", "ww1j_sf_top_mt", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

elif [ $# == 1 ] && [ $1 == 2 ]; then

sed -i 's/writeExtraText = false/writeExtraText = true/' CMS_lumi.h
sed -i 's/extraText   = "Preliminary"/extraText   = "Supplementary"/' CMS_lumi.h

root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_1.root","ww0j_ss_mll",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_2.root","ww0j_top_mll", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_3.root","ww0j_dy_mll",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_1.root","ww1j_ss_mll",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_2.root","ww1j_top_mll", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_3.root","ww1j_dy_mll",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_5.root","ww0j_ss_dphill",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_6.root","ww0j_top_dphill", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_7.root","ww0j_dy_dphill",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_5.root","ww1j_ss_dphill",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_6.root","ww1j_top_dphill", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","rad" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_7.root","ww1j_dy_dphill",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_9.root", "ww0j_ss_ptl1",  0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_10.root","ww0j_top_ptl1", 0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_11.root","ww0j_dy_ptl1",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_9.root", "ww1j_ss_ptl1",  0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_10.root","ww1j_top_ptl1", 0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_11.root","ww1j_dy_ptl1",  0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_13.root","ww0j_ss_ptl2", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_14.root","ww0j_top_ptl2",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_15.root","ww0j_dy_ptl2", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_13.root","ww1j_ss_ptl2", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_14.root","ww1j_top_ptl2",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_15.root","ww1j_dy_ptl2", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_17.root","ww0j_ss_ptll", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_18.root","ww0j_top_ptll",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_19.root","ww0j_dy_ptll", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_17.root","ww1j_ss_ptll", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_18.root","ww1j_top_ptll",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{ll}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_19.root","ww1j_dy_ptll", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_21.root","ww0j_ss_met", 0,"H(125)",1.00,0,"Same-sign DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_22.root","ww0j_top_met",0,"H(125)",1.00,0,"B tagged DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice0_cr0_shapeType0_23.root","ww0j_dy_met", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF0J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_21.root","ww1j_ss_met", 0,"H(125)",1.00,0,"Same-sign DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_22.root","ww1j_top_met",0,"H(125)",1.00,0,"B tagged DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPDF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"histo_ww_80x/histoww_nice1_cr0_shapeType0_23.root","ww1j_dy_met", 0,"H(125)",1.00,0,"DY #rightarrow #tau#tau DF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWDF1J")'

sed -i 's/writeExtraText = true/writeExtraText = false/' CMS_lumi.h
sed -i 's/extraText   = "Supplementary"/extraText   = "Preliminary"/' CMS_lumi.h

elif [ $# == 1 ] && [ $1 == 3 ]; then

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_pt1.root",    "ww0j_sf_ww_ptl1",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_pt1.root",    "ww1j_sf_ww_ptl1",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_pt1.root", "ww0j_sf_top_ptl1", 0,"H(125)",1.00,0,"B tagged  SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el max}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_pt1.root", "ww1j_sf_top_ptl1", 0,"H(125)",1.00,0,"B tagged  SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_pt2.root",    "ww0j_sf_ww_ptl2",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_pt2.root",    "ww1j_sf_ww_ptl2",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_pt2.root", "ww0j_sf_top_ptl2", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{\el min}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_pt2.root", "ww1j_sf_top_ptl2", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_mll.root",    "ww0j_sf_ww_mll",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_mll.root",    "ww1j_sf_ww_mll",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_mll.root", "ww0j_sf_top_mll", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
root -l -q -b finalPlot.C+'(5,1,"m_{ll}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_mll.root", "ww1j_sf_top_mll", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_0jet_sf_dphill.root",      "ww0j_sf_ww_dphill",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_1jet_sf_dphill.root",      "ww1j_sf_ww_dphill",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_top0jet_sf_dphill.root", "ww0j_sf_top_dphill", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
root -l -q -b finalPlot.C+'(5,1,"#Delta #phi_{ll}","radBIN" ,"prefit_distributions/ww_top1jet_sf_dphill.root", "ww1j_sf_top_dphill", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_0jet_sf_met.root",	      "ww0j_sf_ww_met",  0,"H(125)",1.00,0,"WW SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_1jet_sf_met.root",	      "ww1j_sf_ww_met",  0,"H(125)",1.00,0,"WW SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","WWSF1J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_top0jet_sf_met.root", "ww0j_sf_top_met", 0,"H(125)",1.00,0,"B tagged SF 0 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF0J")'
root -l -q -b finalPlot.C+'(5,1,"p_{T}^{miss}","GeVBinWidth" ,"prefit_distributions/ww_top1jet_sf_met.root", "ww1j_sf_top_met", 0,"H(125)",1.00,0,"B tagged SF 1 jet category","","",1,0,"histo_ww_80x/fitDiagnosticsworkspace_wwdfsf_obs.root","TOPSF1J")'

elif [ $# == 1 ] && [ $1 == 4 ]; then

root -l -q -b finalPlot.C+'(8,1,"m_{ll}","GeVBIN" ,"prefit_distributions/h_ww_0jet_em_mll5_4_ALL.root","log_cratio_ww_0jet_em_mll5_4_ALL",1,"H(125)",1.00,0,"","","",1,0,"","")'
root -l -q -b finalPlot.C+'(8,1,"m_{ll}","GeVBIN" ,"prefit_distributions/h_ww_1jet_em_mll5_4_ALL.root","log_cratio_ww_1jet_em_mll5_4_ALL",1,"H(125)",1.00,0,"","","",1,0,"","")'

fi
