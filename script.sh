dir="/etc/tracker";

name=$1;
comment="${*:2}";

echo $comment >> ${dir}/${name}.log;
