# R script to plot scatterplot for ATACseq seq signals using two samples 
# Please refer the correlation.readme to prepare input data
# and calculate correlation   

library(ggplot2)

fileX="/path/sample1_sample2_input.txt"

plotDf <- read.table(fileX,header = T,sep = "\t",stringsAsFactors = F )
#head(plotDf)

a <- colnames(plotDf)[1]
b <- colnames(plotDf)[2]

# add calculated correlation value here 
corr <- "0.75"

plotTitle <- paste("R = ",corr,sep = "")
plotimg <- paste(a,"_",b,".jpg",sep = "")
plotimg


jpeg(plotimg,width = 1000, height = 1000, quality = 100,res=200)

plot <- ggplot(plotDf,aes( log10(1 + plotDf[,1]), log10(1 + plotDf[,2])))
plot <- plot + geom_point(size = 1)
plot <- plot + labs(x = a, y= b)
plot <- plot + labs(title = plotTitle)
plot <- plot + theme(plot.title = element_text(hjust = 0.5))
plot <- plot + theme(legend.position = c(.95, .95),
                     legend.justification = c("right", "top"),
                     legend.box.just = "right",
                     legend.margin = margin(6, 6, 6, 6))
plot

dev.off()
