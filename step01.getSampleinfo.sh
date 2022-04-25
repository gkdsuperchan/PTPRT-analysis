#Step01: Collect sample information.

less ../../cbioportal/mcancer_data/breast_msk_2018/data_clinical_sample.txt|grep -v '^#' |cut -f2,3,13,31-32 >../result.2021/breast_msk_2018.sample.xls
less ../../cbioportal/mcancer_data/chol_msk_2018/data_clinical_sample.txt |grep -v '^#' |awk -F '\t' '{if($23~/Yes/){print $1"\t"$4"\tIV\t"$8"\t"$24}else{print $1"\t"$4"\tI-III\t"$8"\t"$24}}' >../result.2021/chol_msk_2018.sample.xls
less ../../cbioportal/mcancer_data/crc_msk_2017/data_clinical_sample.txt |grep -v '^#' |awk -F '\t' '{print $2"\t"$7"\t"$12"\t"$6"\t"$31}' >../result.2021/crc_msk_2017.sample.xls
less ../../cbioportal/mcancer_data/crc_msk_2017/data_clinical_sample.txt |grep -v '^#' |awk -F '\t' '{if($5!~/MSI$/ || $13!~/MSI$/){print $2"\t"$7"\t"$12"\t"$6"\t"$31}}' >../result.2021/crc_msk_2017.sample.xls
less ../../cbioportal/mcancer_data/egc_msk_2017/data_clinical_sample.txt |grep -v '^#'|awk -F '\t' '{print $1"\t"$9"\t"$10"\t"$8"\t"$6}' >../result.2021/egc_msk_2017.sample.xls
less ../../cbioportal/mcancer_data/egc_msk_2017/data_clinical_sample.txt |grep -v '^#'|awk -F '\t' '{if($21!~/MSI$/)print $1"\t"$9"\t"$10"\t"$8"\t"$6}' >../result.2021/egc_msk_2017.sample.xls
less ../../cbioportal/mcancer_data/hcc_mskimpact_2018/data_clinical_sample.txt|grep -v '^#'|awk -F '\t' '{print $2"\t"$6"\tNA\t"$5"\t"$3}' >../result.2021/hcc_mskimpact_2018.sample.xls
less ../../cbioportal/mcancer_data/hnc_mskcc_2016/data_clinical_sample.txt |grep -v '^#'|awk -F '\t' '{if($3~/Yes/){print $2"\t"$6"\tIV\t"$20"\t"$5}else{print $2"\t"$6"\tI-III\t"$20"\t"$5}}' >../result.2021/hnc_mskcc_2016.sample.xls
less ../../cbioportal/mcancer_data/lung_msk_2017/data_clinical_sample.txt |grep -v '^#'|awk -F '\t' '{print $2"\t"$3"\t"$17"\t"$10"\t"$11}' >../result.2021/lung_msk_2017.sample.xls
less ../../cbioportal/mcancer_data/prad_mskcc_2017/data_clinical_sample.txt|grep -v '^#'|awk -F '\t' '{print $2"\t"$3"\tNA\t"$11"\t"$12}' >../result.2021/prad_mskcc_2017.sample.xls
less ../../cbioportal/mcancer_data/prad_p1000/data_clinical_sample.txt|grep -v '^#'|awk -F '\t' '{if($8~/Primary/ && length($9)>2){print $1"\t"$8"\tIV\t"$13"\t"$14}else{print $1"\t"$8"\tI-III\t"$13"\t"$14}}' >../result.2021/prad_p1000.sample.xls
less ../../cbioportal/mcancer_data/skcm_vanderbilt_mskcc_2015/data_clinical_sample.txt|grep -v '^#'|awk -F '\t' '{print $2"\t"$4"\tNA\t"$3"\t"$7}' >../result.2021/skcm_vanderbilt_mskcc_2015.sample.xls
less -S /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/data/genie_v6.1_201908/data_clinical_sample.txt | grep -v '^#' | awk -F '\t' '{print $2"\t"$5"\tNA\t"$4"\t"$7}' > ../result.2021/genie_v6.1_201908.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/ampca_bcm_2016/data_clinical_sample.txt|grep -v '^#'|grep -v 'SAMPLE_ID'|grep -v 'MSI' |awk -F '\t' '{print $1"\tNA\t"$4"\t"$13"\t"$14}' >../result.2021/ampca_bcm_2016.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/brca_igr_2015/data_clinical_sample.txt|grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\t"$7"\tNA\t"$6"\t"$4}' >../result.2021/brca_igr_2015.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/brca_smc_2018/data_clinical_sample.txt|grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\t"$12"\t"$3"\t"$13"\t"$14}' >../result.2021/brca_smc_2018.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/coadread_dfci_2016/data_clinical_sample.txt|grep -v '^#'|grep -v 'SAMPLE_ID'|grep -v 'MSI'|awk -F '\t' '{print $1"\tNA\t"$3"\t"$8"\t"$9}' >../result.2021/coadread_dfci_2016.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/gct_msk_2016/data_clinical_sample.txt |grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\t"$6"\t"$10"\t"$3"\t"$15}' >../result.2021/gct_msk_2016.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/ihch_smmu_2014/data_clinical_sample.txt |grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\tNA\t"$9"\t"$11"\t"$12}' >../result.2021/ihch_smmu_2014.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/metastatic_solid_tumors_mich_2017/data_clinical_sample.txt |grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\t"$8"\tNA\t"$3"\t"$18}' >../result.2021/metastatic_solid_tumors_mich_2017.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/ntrk_msk_2019/data_clinical_sample.txt|grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $2"\t"$3"\t"$4"\t"$7"\t"$5}' >../result.2021/ntrk_msk_2019.sample.xls
less /ldfssz1/ST_PRECISION/PMO/P18Z10200N0204/STAD/cbioportal/mcancer_data/usarc_msk_2020/data_clinical_sample.txt |grep -v '^#'|grep -v 'SAMPLE_ID'|awk -F '\t' '{print $1"\t"$10"\t"$6"\t"$15"\t"$9}'>../result.2021/usarc_msk_2020.sample.xls

head -1 ../result.2021/breast_msk_2018.sample.xls >../result.2021/head.sample.xls
cat ../result.2021/*.sample.xls |grep -v 'SAMPLE_ID' |grep -v 'GENIE-MSK'|grep -v 'Unspecified'|grep -v 'Not Applicable or Heme'|grep -v 'UNKNOWN' |sort -u >../result.2021/msk.sampleinfo.content.v20210314.xls
cat ../result.2021/*.sample.xls |grep -v 'SAMPLE_ID' |grep -v 'Unspecified'|grep -v 'Not Applicable or Heme'|grep -v 'UNKNOWN' |sort -u >../result.2021/msk.content.v20210309.sample.xls

