#/bin/sh

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hpp_limittests.txt","ana_hpp_limittests" ,2019,200,2000,0,0,"",0,"pdf")';

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hp_limittests.txt","ana_hp_limittests" ,2019,200,2000,0,0,"",1,"pdf")';

root -l -b -q PlotEfficiency.C+'("inputs_runII/ana_hpp_hp_eff.txt","ana_hpp_hp_eff" ,2019,200,3000,0,0,"",2,"pdf")';

