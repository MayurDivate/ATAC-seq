# ATAC-seq correlation analysis 

<h3> Step 1 : create normalised ATAC-seq signal track <br/> </h3>
you can use GUAVA tool which automatically creates ATAC-seq track <br/>
Or you can create it using filtered bam file  <br/>
first convert bam into the bedgrapgh format <br/>
then normalised read depth by read per million (RPM method)  <br/>
and get bigwig file by converting it into bigwig format <br/>
<br/>
<h3> Step 2 : calculate correlation using normalised tracks <br/> </h3>
Use: bwCorr.sh or  bigWigCorrelate UCSC program <br/>
<br/>  
<h3> Step 3 : convert GUAVA BigWig track to  bedGraph format <br/> </h3>
Use: bw2bdg.sh <br/>
<br/>
<h3> Step 5 : Generate input for ATACseq_scatteredplot.r <br/> </h3>
Use: unionBDG.sh <br/>
<br/>
<h3> Step 6 : Plot data <br/> </h3>
Use: ATACseq_scatteredplot.r <br/>
<br/>
<h3> sample plot </h3>

<img src="https://github.com/MayurDivate/ATACseq_scripts/blob/master/correlation_analysis/sample1_sample2_corr_plot.jpg">
