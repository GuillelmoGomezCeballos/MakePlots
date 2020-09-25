#/bin/sh

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond2013_limits_wh3l_cuts.txt" ,"combined_wh3l_cuts"  ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",110,200,0,1,"VH #rightarrow 3l3#nu (counting analysis)"   ,1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond2013_limits_wh3l_shape.txt" ,"combined_wh3l_shape","4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",110,200,0,1,"VH #rightarrow 3l3#nu (shape-based analysis)" ,1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_7TeV_bdt.txt"  ,"ana_Moriond13_2D_SMH_7TeV_bdt"  ,"4.9 fb^{-1} (7 TeV)"                       ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_8TeV_bdt.txt"  ,"ana_Moriond13_2D_SMH_8TeV_bdt"  ,"19.4 fb^{-1} (8 TeV)"                      ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_7p8TeV_bdt.txt","ana_Moriond13_2D_SMH_7p8TeV_bdt","4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_7TeV_cut.txt"  ,"ana_Moriond13_2D_SMH_7TeV_cut"  ,"4.9 fb^{-1} (7 TeV)"		       ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_8TeV_cut.txt"  ,"ana_Moriond13_2D_SMH_8TeV_cut"  ,"19.4 fb^{-1} (8 TeV)"		       ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_SMH_7p8TeV_cut.txt","ana_Moriond13_2D_SMH_7p8TeV_cut","4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_ICHEP2012_oldBDT_7p8TeV.txt"  ,"ana_ICHEP2012_oldBDT_7p8TeV"  ,"4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)"                       ,160,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_7p8TeV_vbf_cut.txt"  ,"ana_Moriond13_2D_7p8TeV_vbf_cut"  ,"4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",110,600,1,1,"VBF H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_Moriond13_2D_7p8TeV_vbf_bdt.txt"  ,"ana_Moriond13_2D_7p8TeV_vbf_bdt"  ,"4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",110,600,1,1,"VBF H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zh_2j3l1n.txt" ,"ana_zh_2j3l1n" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",110,200,0,0,"ZH #rightarrow 3l+E_{T}^{miss}+2-jet",1,4,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_cut.txt"  ,"ana_hzinv_cut"  ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss} (counting analysis)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_bdt.txt"  ,"ana_hzinv_bdt"  ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss} (shape-based analysis)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_cut0.txt" ,"ana_hzinv_cut0" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets (counting analysis)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_bdt0.txt" ,"ana_hzinv_bdt0" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets (shape-based analysis)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_cut1.txt" ,"ana_hzinv_cut1" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+1-jet  (counting analysis)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_bdt1.txt" ,"ana_hzinv_bdt1" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+1-jet  (shape-based analysis)",1,4,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_bdt0.txt"   ,"ana_hzinv_groupB" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets (analysis B)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_groupA.txt" ,"ana_hzinv_groupA" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets (analysis A)",1,4,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_run1/ana_zhinv_groupA_cut.txt" ,"ana_hzinv_groupA_cut" ,"4.9 fb^{-1} (7 TeV) + 19.4 fb^{-1} (8 TeV)",105,145,0,0,"ZH #rightarrow 2l+E_{T}^{miss}+0-jets (counting analysis)",1,4,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_run1/anazhinvg_zh_shape.txt" ,"anazhinvg_shape" ,"19.4 fb^{-1} (8 TeV)",1,120,0,0,"ZH #rightarrow 2l+E_{T}^{miss} + #geq 1#gamma",1,7,"pdf")';

root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvghighmass_zh_shape.txt"  ,"anazhinvghighmass_shape"     ,"19.4 fb^{-1} (8 TeV)",125,400,0,0,"ZH #rightarrow 2l + E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,8,"pdf")';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvghighmass_ggh_shape.txt" ,"anazhinvghighmass_ggh_shape" ," 7.4 fb^{-1} (8 TeV)",125,400,0,1,"ggH #rightarrow E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,8,"pdf",0.18,0.23)';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvghighmass_all_shape.txt" ,"anazhinvghighmass_all_shape" ,"19.4 fb^{-1} (8 TeV)",125,400,0,1,"ZH+ggH","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,2,"pdf")';

root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_zh_lifetime.txt"  ,"anazhinvg_lifetime"     ,"19.4 fb^{-1} (8 TeV)",0,10000,1,1,"ZH #rightarrow 2l + E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,9,"pdf")';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_ggh_lifetime.txt" ,"anazhinvg_ggh_lifetime" ," 7.4 fb^{-1} (8 TeV)",0,10000,1,1,"ggH #rightarrow E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,9,"pdf")';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_all_lifetime.txt" ,"anazhinvg_all_lifetime" ,"19.4 fb^{-1} (8 TeV)",0,10000,1,1,"ZH+ggH","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}","",1,9,"pdf")';

root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_zh_shape.txt"  ,"anazhinvg_shape"     ,"19.4 fb^{-1} (8 TeV)",1,120,0,0,"ZH #rightarrow 2l + E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}, m_{#tilde{#chi}_{1}^{0}} #geq m_{H}/2","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{#chi}_{1}^{0} #rightarrow #gamma #tilde{G} #gamma #tilde{G}, m_{#tilde{#chi}_{1}^{0}} < m_{H}/2",1,6,"pdf")';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_ggh_shape.txt" ,"anazhinvg_ggh_shape" ," 7.4 fb^{-1} (8 TeV)",1,120,0,0,"ggH #rightarrow E_{T}^{miss} + #gamma","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}, m_{#tilde{#chi}_{1}^{0}} #geq m_{H}/2","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{#chi}_{1}^{0} #rightarrow #gamma #tilde{G} #gamma #tilde{G}, m_{#tilde{#chi}_{1}^{0}} < m_{H}/2",1,6,"pdf")';
root -l -b -q PlotLimitZH_run1.C+'("inputs_run1/anazhinvg_all_shape.txt" ,"anazhinvg_all_shape" ,"19.4 fb^{-1} (8 TeV)",1,120,0,0,"ZH+ggH","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{G} #rightarrow #gamma #tilde{G} #tilde{G}, m_{#tilde{#chi}_{1}^{0}} #geq m_{H}/2","H #rightarrow #tilde{#chi}_{1}^{0} #tilde{#chi}_{1}^{0} #rightarrow #gamma #tilde{G} #gamma #tilde{G}, m_{#tilde{#chi}_{1}^{0}} < m_{H}/2",1,6,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_0","4.9 fb^{-1} (7 TeV)",110,600,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_1","4.9 fb^{-1} (7 TeV)",110,160,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_2","4.9 fb^{-1} (7 TeV)",110,600,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_3","4.9 fb^{-1} (7 TeV)",110,160,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_4","4.9 fb^{-1} (7 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_v7_Full2011_limits_nj_shape.txt","limit7TeV_5","4.9 fb^{-1} (7 TeV)",110,160,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_0","5.1 fb^{-1} (8 TeV)",110,600,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_1","5.1 fb^{-1} (8 TeV)",110,160,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_2","5.1 fb^{-1} (8 TeV)",110,600,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_3","5.1 fb^{-1} (8 TeV)",110,160,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_4","5.1 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_nj_cut_8TeV.txt","limit8TeV_5","5.1 fb^{-1} (8 TeV)",110,160,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limits_2j_cut_8TeV.txt","limit8TeV_6","5.1 fb^{-1} (8 TeV)",110,600,0,0)';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limitsof_2j_cut_8TeV.txt","limit8TeV_7","5.1 fb^{-1} (8 TeV)",110,600,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_limitsof_2j_cut_8TeV_VBF_allcuts.txt","limit8TeV_8","5.1 fb^{-1} (8 TeV)",110,600,0,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_cutbased_8TeV.txt","limit8TeV_cut_0","5.1 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_mvabased_8TeV.txt","limit8TeV_bdt_0","5.1 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (BDT-based)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP_mvabased_7p8TeV.txt","combined_0","4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/limits_8TeVCut.txt","limit8TeV_cut_1","5.1 fb^{-1} (8 TeV)"		       ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/limits_8TeV.txt"   ,"limit8TeV_bdt_1","5.1 fb^{-1} (8 TeV)"		       ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (BDT-based)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/limits_7p8TeV.txt" ,"combined_1"     ,"4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu"	     ,1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/limits_7p8TeV_ofshape.txt"   ,"limit7p8TeV_ofshape","4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",160,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu (BDT-based)",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/limits_7p8TeV_new.txt" ,"combined_new"     ,"4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",140,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu"	     ,1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_ICHEP2012_limits_wh3l_shape.txt" ,"combined_wh3l_shape_ICHEP2012","4.9 fb^{-1} (7 TeV) + 5.1 fb^{-1} (8 TeV)",110,200,0,1,"VH #rightarrow 3l3#nu (shape-based analysis)" ,1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_BDT_7p8TeV.txt","ana_HCP_BDT_7p8TeV","4.9 fb^{-1} (7 TeV) + 12.1 fb^{-1} (8 TeV)",110,600,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_bdtbased_8TeV.txt","ana_HCP_bdtbased_8TeV","12.1 fb^{-1} (8 TeV)"		    ,110,600,1,0,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_2D_7p8TeV.txt","ana_HCP_2D_7p8TeV","4.9 fb^{-1} (7 TeV) + 12.1 fb^{-1} (8 TeV)"  ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_cutbased_8TeV.txt","ana_HCP_cutbased_8TeV","12.1 fb^{-1} (8 TeV)"		 ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_2dbased_8TeV.txt","ana_HCP_2dbased_8TeV","12.1 fb^{-1} (8 TeV)" 		 ,110,600,1,1,"H #rightarrow WW #rightarrow 2l2#nu",1,0,"pdf")';

root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_2D_WithH125_cut.txt"	,"ana_HCP_2D_WithH125_cut"    ,"12.1 fb^{-1} (8 TeV)"  ,110,240,0,0,"H #rightarrow WW #rightarrow 2l2#nu (counting analysis)",1,3,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_2D_WithH125_bdt.txt"	,"ana_HCP_2D_WithH125_bdt"    ,"12.1 fb^{-1} (8 TeV)"  ,110,240,0,0,"H #rightarrow WW #rightarrow 2l2#nu (shape-based analysis)",1,3,"pdf")';
root -l -b -q PlotLimit_run1.C+'("inputs_130209/ana_HCP_2D_WithH125_ofshape.txt","ana_HCP_2D_WithH125_ofshape","12.1 fb^{-1} (8 TeV)"  ,110,240,0,0,"H #rightarrow WW #rightarrow 2l2#nu (2D DF only)",1,3,"pdf")';
