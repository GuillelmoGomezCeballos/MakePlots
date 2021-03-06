#/bin/sh

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hpp_limittests.txt","ana_hpp_limittests" ,2019,200,2000,0,0,"",0,"pdf")';

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hp_limittests.txt","ana_hp_limittests" ,2019,200,2000,0,0,"",1,"pdf")';

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hpp_hp_eff.txt","ana_hpp_hp_eff" ,2019,200,3000,0,0,"",2,"pdf")';


#grep Significance: log_runFits_ssww_hllhc|awk '(NR%2==1){printf("%.5f\n",$2)}'
#grep Significance: log_runFits_ssww_hllhc|awk '(NR%2==0){printf("%.5f\n",$2)}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==1){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==2){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==4){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==6){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==5){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'
#grep r_s log_runFits_ssww_hllhc|grep 68%|awk '(NR%7==0){split($4,a,"/+");printf("%.3f\n",(a[2]-a[1])/2);}'

sed -i 's/writeExtraText = false/writeExtraText = true/' CMS_lumi.h
sed -i 's/extraText   = "Preliminary"/extraText   = "Phase-2 Projection"/' CMS_lumi.h
root -l -b -q PlotEfficiency.C+'("inputs_hllhc/ana_sig_wlwl.txt","ana_sig_wlwl" ,2025,137,6000,0,0,"",3,"pdf")';
root -l -b -q PlotEfficiency.C+'("inputs_hllhc/ana_ewk_ww_wz.txt","ana_ewk_ww_wz" ,2025,137,6000,0,0,"",4,"pdf")';
root -l -b -q PlotEfficiency.C+'("inputs_hllhc/ana_unc_wlwl.txt","ana_unc_wlwl" ,2025,137,6000,0,0,"",5,"pdf")';
root -l -b -q PlotEfficiency.C+'("inputs_hllhc/ana_unc_wtwx.txt","ana_unc_wtwx" ,2025,137,6000,0,0,"",5,"pdf")';
sed -i 's/writeExtraText = true/writeExtraText = false/' CMS_lumi.h
sed -i 's/extraText   = "Phase-2 Projection"/extraText   = "Preliminary"/' CMS_lumi.h
