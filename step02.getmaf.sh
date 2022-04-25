# Step02: Collect mutation data.

less ../../cbioportal/mcancer_data/breast_msk_2018/data_mutations_extended.txt|cut -f1-17,34-40 >../result.2021/breast_msk_2018.maf.xls
less ../../cbioportal/mcancer_data/chol_msk_2018/data_mutations_extended.txt|cut -f1-17,34-40 >../result.2021/chol_msk_2018.maf.xls
less ../../cbioportal/mcancer_data/crc_msk_2017/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/crc_msk_2017.maf.xls
less ../../cbioportal/mcancer_data/egc_msk_2017/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/egc_msk_2017.maf.xls
less ../../cbioportal/mcancer_data/hcc_mskimpact_2018/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/hcc_mskimpact_2018.maf.xls
less ../../cbioportal/mcancer_data/hnc_mskcc_2016/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/hnc_mskcc_2016.maf.xls
less ../../cbioportal/mcancer_data/lung_msk_2017/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/lung_msk_2017.maf.xls
less ../../cbioportal/mcancer_data/prad_mskcc_2017/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/prad_mskcc_2017.maf.xls
less ../../cbioportal/mcancer_data/prad_p1000/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/prad_p1000.maf.xls
less ../../cbioportal/mcancer_data/skcm_vanderbilt_mskcc_2015/data_mutations_extended.txt |grep -v '^#' |cut -f1-17,34-40 >../result.2021/skcm_vanderbilt_mskcc_2015.maf.xls
head ../result.2021/breast_msk_2018.maf.xls|head -1 >../result.2021/maf.head.xls
cat ../result.2021/*.maf.xls | grep -v 'Hugo_Symbol' > ../result.2021/mskall.maf.content.xls

cd ../../cbioportal/mcancer_data
for i in `ls */data_mutations_extended.txt`;do echo "less $i| cut -f1-17,34-40 >$i.maf";done|sh
head -1 ../../cbioportal/mcancer_data/chol_msk_2018/data_mutations_extended.txt.maf >../result.2021/maf.head.xls
cat ../../cbioportal/mcancer_data/*/data_mutations_extended.txt.maf|grep -v 'Hugo_Symbol' >../result.2021/mskall.maf.content.xls
mkdir -p ../result.2021/maf
cat ../result.2021/maf.head.xls ../result.2021/mskall.maf.content.xls > ../result.2021/mskall.maf.xls




