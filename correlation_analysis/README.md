# ATAC-seq correlation analysis 

<h3> Step 1 : create normalised ATAC-seq signal track <br/> </h3>
you can use GUAVA tool which automatically creates ATAC-seq track <br/>
<br/>
# Step 2 : calculate correlation using normalised tracks <br/>
Use bwCorr.sh or  bigWigCorrelate UCSC program <br/>
<br/>  
# Step 3 : convert GUAVA BigWig track to  bedGraph format <br/>
Use bw2bdg.sh <br/>
<br/>
# Step 5 : Generate input for ATACseq_scatteredplot.r <br/>
Use unionBDG.sh <br/>
<br/>
# Step 6 : Plot data <br/>
Use ATACseq_scatteredplot.r <br/>
<br/>
<h1> sample plot </h1>

<img src="https://github.com/MayurDivate/ATACseq_scripts/blob/master/correlation_analysis/sample1_sample2_corr_plot.jpg">
