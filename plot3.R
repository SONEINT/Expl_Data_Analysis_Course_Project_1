source("DownloadCleanPrepare.R")

ComputePlot3 <- function() {
    data_plot3 <- DownloadCleanPrepareData()
    par(mfrow=c(1,1))
    png(filename = "plot3.png", width = 480, height = 480, units = "px", bg="transparent")
    cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    plot(data_plot3$DateTime, data_plot3$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(data_plot3$DateTime, data_plot3$Sub_metering_2, type="l", col="red")
    lines(data_plot3$DateTime, data_plot3$Sub_metering_3, type="l", col="blue")
    legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
    dev.off()
}

ComputePlot3()
