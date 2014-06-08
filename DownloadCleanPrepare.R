# Create a script with two functions to Download, clean and prepare the file for plotting 
#
## Create a function called DownloadFile to download a file from a url with method "curl" and name it FileName
DownloadFile <- function(FileUrl, FileName) {
    if(!file.exists(FileName)) {
        download.file(FileUrl, destfile=FileName, method="curl")
    }
    FileName
}
## Create a function called CleanPrepareData to read the CSV file called data_plot in cache
## OR 
## download ZIP file from requested URL, UNZIP the file, read the file correctly, prepare the file, and write it in cache
DownloadCleanPrepareData <- function() {
    cacheFile <- "data_plot.csv"
    if(file.exists(cacheFile)) {
        data_plot <- read.csv(cacheFile)
        data_plot$DateTime <- strptime(data_plot$DateTime, "%Y-%m-%d %H:%M:%S")
    }
    else {
        FileName <- DownloadFile("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
        con <- unz(FileName, "household_power_consumption.txt")
        data_plot <- read.table(con, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
        #close(con)
        data_plot <- data_plot[(data_plot$Date == "1/2/2007") | (data_plot$Date == "2/2/2007"),]
        data_plot$DateTime <- strptime(paste(data_plot$Date, data_plot$Time), "%d/%m/%Y %H:%M:%S")
        write.csv(data_plot, cacheFile)
    }
    data_plot
}



## Glossary
#
# DownloadFile () = "Download File from Url" function
# DownloadCleanPrepareData () = "Read & Preprare OR Download & Unzip & Read & PrepareData" function
