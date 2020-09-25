#/bin/sh

root -l -b -q PlotLimit_ZHinv_2016.C+'("inputs_2016/ana_zhinv_bdt_nj.txt" ,"ana_hzinv_met_nj" ,2016,110,1000,1,0,"ZH #rightarrow 2l+p_{T}^{miss} + #leq 1 jet",1,5,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_2016/ana_zhinv_bdt_nj_massscan.txt","ana_hzinv_met_nj_massscan","35.9 fb^{-1} (13 TeV)",120,130,0,0,"pp #rightarrow ZH #rightarrow 2l+p_{T}^{miss} + #leq 1 jet",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_2016/ana_zhinv_bdt_nj_ratios.txt","ana_hzinv_met_nj_ratios","35.9 fb^{-1} (13 TeV)",110,300,0,0,"qq #rightarrow ZH #rightarrow 2l+p_{T}^{miss} + #leq 1 jet",1,4,"pdf")';

root -l -b -q PlotLimitForVBS_run1.C+'("inputs_2016/ana_hpp_samesign.txt","ana_hpp_samesign",200,1000,0,0,"VBF H^{#pm#pm} #rightarrow W^{#pm}W^{#pm}",1,5,"pdf")';
root -l -b -q PlotLimitForVBS_run1.C+'("inputs_2016/ana_hpp_samesign_ratios.txt","ana_hpp_samesign_ratios",200,1000,0,0,"VBF H^{#pm#pm} #rightarrow W^{#pm}W^{#pm}",1,0,"pdf")';

root -l -b -q PlotLimit_ZHinv_2016.C+'("inputs_2015/ana_zhinv_bdt_0j.txt" ,"ana_hzinv_bdt_0j" ,2016,110,600,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets",1,5,"pdf")';
root -l -b -q PlotLimit_ZHinv_2016.C+'("inputs_2015/ana_zhinv_bdt_1j.txt" ,"ana_hzinv_bdt_1j" ,2016,110,600,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+1-jets",1,5,"pdf")';
root -l -b -q PlotLimit_ZHinv_2016.C+'("inputs_2015/ana_zhinv_bdt_nj.txt" ,"ana_hzinv_bdt_nj" ,2016,110,600,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0/1-jets",1,5,"pdf")';

root -l -b -q PlotLimitZH_run1.C+'("inputs_2016/ana_zhginv_2j.txt"  ,"ana_zhginv_2j"     ,"35.9 fb^{-1} (13 TeV)",0,90,0,0,"ZH #rightarrow 2l + E_{T}^{miss} + #gamma","","",1,6,"pdf")';
