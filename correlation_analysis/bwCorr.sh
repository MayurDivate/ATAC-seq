# Usage: sh bwCorr.sh sample1.bw sample2.bw  
# make sure that you have normalised bigwig track
# probably RPM normalisation
# you can download UCSC bigWigCorrelate program
# here: http://hgdownload.soe.ucsc.edu/admin/exe/
# Author@MayurDivate 



sample1=`basename $1`
sample2=`basename $2`
out=$sample1"_vs_"$sample2

cor=`/home/mdivate/Programs/UCSC_Programs/bigWigCorrelate $sample1 $sample2`

echo $out" = "$cor





