#Step05: prepare for fisher tables.

echo start at `date`
perl bin/statforFisher.mergedall.pl ../result.2021/msk.v20210309.marker.xls ../result.2021/fishertable
echo end at `date`
