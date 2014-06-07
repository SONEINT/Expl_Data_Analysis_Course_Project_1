Expl_Data_Analysis_Course_Project_1
===================================

Data Science specialization course - Exploratory Data Analysis - Course Project 1

* I have choose to compute the code with functions (which was most difficult to achieve for me at this stade)
* I have tested `data.table()`package, which was much faster to read and compute the subset data frames to realize the plots, but I have encountered some errors that was not possible for me to resolved before the deadline
* I have so decided to read the file and to compute it as a `.csv`file, which is not the faster solution but gave me good results
* Nevertheless, I think that the R code with functions computing is a good achievement for me


# PART I - Program description

The R code is separated in 5 different R files as follows:

* **DowloadCleanPrepare.R** code file: this R code file is used to create a script with two functions to download, clean and prepare the file for plotting. You would find two functions inside:
	- a `DownloadFile()` function to compute file dowloading
	- a `DownloadCleanPrepareData()`function to Download, unzip, clean and prepare the file OR just prepare the file (if already computed for next plots) before plotting functions
* **plot1.R** code file: this R code file is used to compute the plot 1 with a function called `ComputePlot1()` with `hist()`function, calling and using `DownloadCleanPrepareData()`function 
* **plot2.R** code file: this R code file is used to compute the plot 2 with a function called `ComputePlot2()` with `plot()`function, calling and using `DownloadCleanPrepareData()`function 
* **plot3.R** code file: this R code file is used to compute the plot 3 with a function called `ComputePlot3()` with `plot()`function with additional information, calling and using `DownloadCleanPrepareData()`function 
* **plot4.R** code file: this R code file is used to compute the plot 2 with a function called `ComputePlot4()` with several`plot()`function calls and a `par()`function customization, calling and using `DownloadCleanPrepareData()`function 


# PART II - Data and Variable descriptions

## Data Set description

 **Name**: “Individual household electric power consumption Data Set” 

**Dataset**: [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) [20Mb]

**Description**: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

## Variables description

The following descriptions of the 9 variables in the dataset are taken from the [UCI web site](https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption):

1. **Date**: Date in format dd/mm/yyyy
2. **Time**: time in format hh:mm:ss
3. **Global_active_power**: household global minute-averaged active power (in kilowatt)
4. **Global_reactive_power**: household global minute-averaged reactive power (in kilowatt)
5. **Voltage**: minute-averaged voltage (in volt)
6. **Global_intensity**: household global minute-averaged current intensity (in ampere)
7. **Sub_metering_1**: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8. **Sub_metering_2**: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9. **Sub_metering_3**: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

