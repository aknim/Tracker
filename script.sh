dir="/etc/tracker";

name=$1;
file="${dir}/${name}.log";

if [ $arg == "-o" ]
then
vim ${file};
exit 0;
fi

comment="${*:2}";
date=`date +%s`;

log_line="${date},${comment}"

echo ${log_line} >> ${file};
