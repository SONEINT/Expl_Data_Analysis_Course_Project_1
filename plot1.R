source("DownloadCleanPrepare.R")

ComputePlot1 <- function() {
    data_plot_1 <- DownloadCleanPrepareData()
    par(mfrow=c(1,1))
    png(filename = "plot1.png", width = 480, height = 480, units = "px", bg="transparent")
    hist(data_plot_1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
    dev.off()
}

ComputePlot1()
