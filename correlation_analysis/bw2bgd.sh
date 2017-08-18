# Usage: sh bw2bdg.sh sample.bw 
# make sure that you have normalised bigwig track
# probably RPM normalisation
# you can download UCSC bigWigToBedGraph program
# here: http://hgdownload.soe.ucsc.edu/admin/exe/
# Author@MayurDivate 

inBW=$1
out=`basename $inBW .bw`
out=$out".bdg"

echo "coverting bigwig to bedgraph. outfile: "$out


# change path for bigWigToBedGraph USCSC program 

~/Programs/UCSC_Programs/bigWigToBedGraph $1 $out

echo "Completed"


