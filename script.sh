dir="/etc/tracker";

name=$1;
comment="${*:2}";
date=`date +%s`;

log_line="${date},${comment}"

echo ${log_line} >> ${dir}/${name}.log;
