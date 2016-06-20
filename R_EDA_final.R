#load the files
pf_00 <- read.csv("2000.csv")
pf_01 <- read.csv("2001.csv")
pf_02 <- read.csv("2002.csv")

#extract the number of flights
Number_of_uncancelled_flights_00 <- c()
Number_of_cancelled_flights_00 <- c()
for (i in 1:12) {
        Number_of_uncancelled_flights_00[i] = dim(subset(pf_00, Cancelled == 0 & Month == i))
}
for (i in 1:12) {
        Number_of_cancelled_flights_00[i] = dim(subset(pf_00, Cancelled == 1 & Month == i))
}

Number_of_uncancelled_flights_01 <- c()
Number_of_cancelled_flights_01 <- c()
for (i in 1:12) {
        Number_of_uncancelled_flights_01[i] = dim(subset(pf_01, Cancelled == 0 & Month == i))
}
for (i in 1:12) {
        Number_of_cancelled_flights_01[i] = dim(subset(pf_01, Cancelled == 1 & Month == i))
}

Number_of_uncancelled_flights_02 <- c()
Number_of_cancelled_flights_02 <- c()
for (i in 1:12) {
        Number_of_uncancelled_flights_02[i] = dim(subset(pf_02, Cancelled == 0 & Month == i))
}
for (i in 1:12) {
        Number_of_cancelled_flights_02[i] = dim(subset(pf_02, Cancelled == 1 & Month == i))
}

#create arrays of data
Type <- c("Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Uncancelled", "Uncancelled","Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled",
          "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", 
          "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Uncancelled", "Uncancelled","Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled",
          "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", 
          "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", "Cancelled", 
          "Uncancelled", "Uncancelled","Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled",
          "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled", "Uncancelled")
Month <- c("Jan-00", "Feb-00", "Mar-00", "Apr-00", "May-00", "Jun-00", "Jul-00", "Aug-00", "Sep-00", "Oct-00", "Nov-00", "Dec-00", 
           "Jan-00", "Feb-00", "Mar-00", "Apr-00", "May-00", "Jun-00", "Jul-00", "Aug-00", "Sep-00", "Oct-00", "Nov-00", "Dec-00", 
           "Jan-01", "Feb-01", "Mar-01", "Apr-01", "May-01", "Jun-01", "Jul-01", "Aug-01", "Sep-01", "Oct-01", "Nov-01", "Dec-01", 
           "Jan-01", "Feb-01", "Mar-01", "Apr-01", "May-01", "Jun-01", "Jul-01", "Aug-01", "Sep-01", "Oct-01", "Nov-01", "Dec-01", 
           "Jan-02", "Feb-02", "Mar-02", "Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", 
           "Jan-02", "Feb-02", "Mar-02", "Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02")
Number_of_flights <- c(Number_of_cancelled_flights_00, Number_of_uncancelled_flights_00, Number_of_cancelled_flights_01, Number_of_uncancelled_flights_01, 
                       Number_of_cancelled_flights_02, Number_of_uncancelled_flights_02)

#create a data frame and export it as a tsv file
pf2 <- data.frame(Month, Type, Number_of_flights)
write.table(pf2, file='2000-2002_EDA.tsv', quote=FALSE, sep='\t', col.names = NA)