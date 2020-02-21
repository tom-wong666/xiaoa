DATE_START=`date "+%Y-%m-%d %H:%M:%S"`
echo "${DATE_START} start"
rm -rf /xiaoa/www/index.html /xiaoa/www/static
cp -rf /xiaoa/deploy/dist/index.html /xiaoa/deploy/dist/static /xiaoa/www
DATE_END=`date "+%Y-%m-%d %H:%M:%S"`
echo "${DATE_END} end,success"

