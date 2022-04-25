# PTPRT-analysis
Association of PTPRT Mutations with Cancer Metastasis in Multiple Cancer Types

Metastasis is one of the characteristics of advanced tumors and the main cause of death, but the mechanism of tumor metastasis is not clear and there is a lack of biomarkers. In this study, by integrating large data sets from multiple studies, we found PTPRT mutations to be potential biomarkers for metastasis in a variety of cancers.

Author contact information: Chao Chen(gkd.chaochen@foxmail.com) 

Running Pipeline:
#Step01: Collect sample information.
sh step01.getSampleinfo.sh 

#Step02: Collect mutation data.
sh step02.getmaf.sh

#Step03: pooled samples.
sh step03.mergemaf.sh

#Step04: pool sample information.
sh step04.germarkermut.sh

#Step05: prepare for fisher tables.
sh step05.prepare.Fisher. sh

#Step06: run for multiple cancer types and do p.adjust.
sh step06.Fisherexact-test.sh
