dir="/etc/tracker";

name=$1; name=${name:2};
file="${dir}/${name}.log";

arg=$2;
if [ $arg == "-o" ]
then
vim ${file};
exit 0;
fi

comment="${*:2}";
date=`date +%s`;

log_line="${date},${comment}"
echo ${log_line};
echo ${log_line} >> ${file};
