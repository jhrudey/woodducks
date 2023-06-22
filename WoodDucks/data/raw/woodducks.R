
# activate the readxl library so that we can read in the excel files

library(readxl)

# read in the excel files that are saved in our current directory
# set the col_names to FALSE because we don't want the first row 
# to be seen as a column name

df1 <- read_xlsx("datafiles/datafile_1.xlsx", col_names = FALSE)
df2 <- read_xlsx("datafiles/datafile_2.xlsx", col_names = FALSE)
df3 <- read_xlsx("datafiles/datafile_3.xlsx", col_names = FALSE)
df4 <- read_xlsx("datafiles/datafile_4.xlsx", col_names = FALSE)
df5 <- read_xlsx("datafiles/datafile_5.xlsx", col_names = FALSE)
df6 <- read_xlsx("datafiles/datafile_6.xlsx", col_names = FALSE)
df7 <- read_xlsx("datafiles/datafile_7.xlsx", col_names = FALSE)
df8 <- read_xlsx("datafiles/datafile_8.xlsx", col_names = FALSE)
df9 <- read_xlsx("datafiles/datafile_9.xlsx", col_names = FALSE)
df10 <- read_xlsx("datafiles/datafile_10.xlsx", col_names = FALSE)
df11 <- read_xlsx("datafiles/datafile_11.xlsx", col_names = FALSE)

# turn the first column of any of the data frames we created into a vector
# that lists the column names

varnames <- unlist(as.vector(df1[, 1]))

# get the data from each of the datafiles by turning the second column
# in each data frame into a vector

data1 <- unlist(as.vector(df1[, 2]))
data2 <- unlist(as.vector(df2[, 2]))
data3 <- unlist(as.vector(df3[, 2]))
data4 <- unlist(as.vector(df4[, 2]))
data5 <- unlist(as.vector(df5[, 2]))
data6 <- unlist(as.vector(df6[, 2]))
data7 <- unlist(as.vector(df7[, 2]))
data8 <- unlist(as.vector(df8[, 2]))
data9 <- unlist(as.vector(df9[, 2]))
data10 <- unlist(as.vector(df10[, 2]))
data11 <- unlist(as.vector(df11[, 2]))

# bind the data into rows

woodducks <- as.data.frame(rbind(data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11))

#set the column names on the new data frame woodducks by using the 
# varnames vector we created previously

colnames(woodducks) <- varnames



wood_ducks <- read.csv("data/raw/WoodDucksRaw_20230622.csv", sep = ";")

# change all Mass units to grams

wood_ducks$Mass[6] <- wood_ducks$Mass[6]*1000
wood_ducks$Mass[8] <- wood_ducks$Mass[8]*1000
wood_ducks$Mass[9] <- wood_ducks$Mass[9]*1000
wood_ducks$Mass[10] <- wood_ducks$Mass[10]*1000
wood_ducks$Mass[11] <- wood_ducks$Mass[11]*1000


wood_ducks$Incubation.Period..days.[4] <- "NULL"
wood_ducks$Incubation.Period..days.[7] <- "NULL"
wood_ducks$Incubation.Period..days.[11] <- "NULL"

wood_ducks$number.of.eggs[2] <- 14
wood_ducks$number.of.eggs[7] <- 5


wood_ducks$Nest.initiation.day.of.year[10] <- "NULL"
