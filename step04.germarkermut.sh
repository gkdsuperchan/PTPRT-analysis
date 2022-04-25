#Step04: pool sample informations.

less ../result/drivergene.list|cut -f1|sort -u |grep -v 'Gene' >../result/drivergene.uniq.list

perl bin/addFMmut.pl ../result.2021/mskall.maf.rmdup.xls ../result.2021/msk.v20210309.sampleinfo.modify.xls ../result/drivergene.uniq.list ../result.2021/msk.v20210309.marker.xls

