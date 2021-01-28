#/bin/sh

#grep -e "r_s0 <" -e "r_s1 <" log_runFits_*|awk '{xs=1;if($1=="sample:")printf("%19s ",$2);else printf("%11.6f ",$5*xs);if(NR%6==0)printf("\n");if(NR%36==0)printf("--------------\n");}'|awk '(NR%7==1){print$0}' > lll1
#cat lll1|awk '{printf("%9.6f %9.6f %9.6f %9.6f %9.6f %9.6f %9.6f\n",sqrt($1),1,sqrt($4),sqrt($2),sqrt($3),sqrt($5),sqrt($6))}'
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_hpp_hp.txt" ,"ana_hpp_hp" ,2019,200,2000,0,0,"",1,15,"pdf")';

#grep -e "r_s0 <" -e "r_s1 <" log_runFits_*|awk '{xs=1;if($1=="sample:")printf("%19s ",$2);else printf("%11.6f ",$5*xs);if(NR%6==0)printf("\n");if(NR%36==0)printf("--------------\n");}'|awk '(NR%7==2){print$0}' > lll1
#cat > lll2
#paste lll?|awk '{printf("%9.6f %9.6f %9.6f %9.6f %9.6f %9.6f %9.6f\n",$1*$7,$7,$4*$7,$2*$7,$3*$7,$5*$7,$6*$7)}'
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_hpp_ww.txt" ,"ana_hpp_ww" ,2019,200,3000,0,1,"",1,16,"pdf")';

#grep -e "r_s0 <" -e "r_s1 <" log_runFits_*|awk '{xs=1;if($1=="sample:")printf("%19s ",$2);else printf("%11.6f ",$5*xs);if(NR%6==0)printf("\n");if(NR%36==0)printf("--------------\n");}'|awk '(NR%7==3){print$0}' > lll1
#cat > lll2
#paste lll?|awk '{printf("%9.6f %9.6f %9.6f %9.6f %9.6f %9.6f %9.6f\n",$1*$7,$7,$4*$7,$2*$7,$3*$7,$5*$7,$6*$7)}'
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_hp_wz.txt" ,"ana_hp_wz" ,2019,200,3000,0,1,"",1,17,"pdf")';

root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_zhg_mt_comb.txt" ,"ana_zhg_mt_comb" ,2019,125,300,0,1,"ZH #rightarrow 2l+p_{T}^{miss}+#gamma",1,10,"pdf")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_monoz_unparticles.txt" ,"ana_monoz_unparticles" ,2019,1.00,2.20,0,1,"spin = 0, #lambda = 1",1,11,"pdf")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_2.txt" ,"ana_add_d_2" ,2019,1,3.3,0,0,"",1,12,"pdf","2")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_3.txt" ,"ana_add_d_3" ,2019,1,3.3,0,0,"",1,12,"pdf","3")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_4.txt" ,"ana_add_d_4" ,2019,1,3.3,0,0,"",1,12,"pdf","4")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_5.txt" ,"ana_add_d_5" ,2019,1,3.3,0,0,"",1,12,"pdf","5")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_6.txt" ,"ana_add_d_6" ,2019,1,3.3,0,0,"",1,12,"pdf","6")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_add_d_7.txt" ,"ana_add_d_7" ,2019,1,3.3,0,0,"",1,12,"pdf","7")';

root -l -b -q PlotLimit_Add_run2.C+'("inputs_runII/ana_add.txt" ,"ana_add" ,2019,2,7,0,0,"",1,12,"pdf")';

root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_vbfg_mt_comb.txt" ,"ana_vbfg_mt_comb" ,2019,125,1000,0,1,"VBF+p_{T}^{miss}+#gamma",1,13,"pdf")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_vbfg_mt_2016.txt" ,"ana_vbfg_mt_2016" ,2016,125,1000,0,1,"VBF+p_{T}^{miss}+#gamma",1,13,"pdf")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_vbfg_mt_2017.txt" ,"ana_vbfg_mt_2017" ,2017,125,1000,0,1,"VBF+p_{T}^{miss}+#gamma",1,13,"pdf")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_vbfg_mt_2018.txt" ,"ana_vbfg_mt_2018" ,2018,125,1000,0,1,"VBF+p_{T}^{miss}+#gamma",1,13,"pdf")';

root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_ft0.txt" ,"ana_aqgc_ft0" ,2019,-2.0,2.0,0,0,"VBS WW+WZ",1,14,"pdf","FT0")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_ft1.txt" ,"ana_aqgc_ft1" ,2019,-2.0,2.0,0,0,"VBS WW+WZ",1,14,"pdf","FT1")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_ft2.txt" ,"ana_aqgc_ft2" ,2019,-4.5,4.5,0,0,"VBS WW+WZ",1,14,"pdf","FT2")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fm0.txt" ,"ana_aqgc_fm0" ,2019, -10, 10,0,0,"VBS WW+WZ",1,14,"pdf","FM0")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fm1.txt" ,"ana_aqgc_fm1" ,2019, -30, 30,0,0,"VBS WW+WZ",1,14,"pdf","FM1")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fm6.txt" ,"ana_aqgc_fm6" ,2019, -20, 20,0,0,"VBS WW+WZ",1,14,"pdf","FM6")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fm7.txt" ,"ana_aqgc_fm7" ,2019, -40, 40,0,0,"VBS WW+WZ",1,14,"pdf","FM7")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fs0.txt" ,"ana_aqgc_fs0" ,2019, -50, 50,0,0,"VBS WW+WZ",1,14,"pdf","FS0")';
root -l -b -q PlotLimit_ZHinv_run2.C+'("inputs_runII/ana_aqgc_fs1.txt" ,"ana_aqgc_fs1" ,2019, -35, 35,0,0,"VBS WW+WZ",1,14,"pdf","FS1")';
