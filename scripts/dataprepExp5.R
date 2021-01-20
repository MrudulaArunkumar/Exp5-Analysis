library(tidyverse)
library(plyr)

dir <- setwd("D:/PhD/Experiments/Exp5/raw data/Exp5Prolific")

#saving all the csv files in that directory into one variable
allOldata <- list.files(path = dir, pattern = "*.csv")

#making the file names into one list
Exp5data <- lapply(allOldata, read_csv)

#using rbind to save it al in on df
#using rbind.fill because some columns do not exist in some datafiles, namely the "preResp.key" 
Exp5 <- do.call(rbind.fill,Exp5data)

write.csv(Exp5, file = "Exp5_fulldataset.csv")
