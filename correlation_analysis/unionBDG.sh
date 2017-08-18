# Usage: sh unionBDG.sh sample1.bdg sample2.bdg 
# unionBedGraphs program come with bedtools
# make sure that you have installed bedtools 
# and added to system paths
# Author@MayurDivate 


file1=$1
file2=$2

name1=`basename $1 .bdg`
name2=`basename $2 .bdg`
tmp=$name1"_"$name2
out=$tmp".txt"
mkdir -p $tmp

echo "-------------------$tmp-------------------"

unionBedGraphs -header  -names $name1 $name2 -i $file1 $file2 |  cut -f4,5 | sort -T $tmp -u - > $out

echo "-------------------END-------------------"



