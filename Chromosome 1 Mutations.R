#load files for African, African Americans, and Caucasians)
acgen <- read.csv("~/Documents/CURE2016/Project/Project Data/Afiltered_mutations_in_african.hg19_multianno.csv")
aacgen <- read.csv("~/Documents/CURE2016/Project/Project Data/AAfiltered_mutations_in_tcga_aa.hg19_multianno.csv")
ccgen <- read.csv("~/Documents/CURE2016/Project/Project Data/Cfiltered_mutations_in_tcga_white.hg19_multianno.csv")

#Calculate total populations

#African Population
Arun <- as.numeric(levels(acgen[["Chr"]]))[acgen[["Chr"]]]
Arun <-Arun[-rev(which(Arun %in% NA))]
ATP <- length(which(diff(rle(Arun)$values) < 0)) + 1

#African American Population
AArun <- as.numeric(levels(aacgen[["Chr"]]))[aacgen[["Chr"]]]
AArun <-AArun[-rev(which(AArun %in% NA))]
AATP <- length(which(diff(rle(AArun)$values) < 0)) + 1

#Caucasian Population
Crun <- as.numeric(levels(ccgen[["Chr"]]))[ccgen[["Chr"]]]
Crun <-Crun[-rev(which(Crun %in% NA))]
CTP <- length(which(diff(rle(Crun)$values) < 0)) + 1


#Calculations for African Demographic

AChr1Mut <- numeric()

#G for A
find1 <- acgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
acgen1ref <- acgen[["Ref"]][decide1]
acgen1alt <- acgen[["Alt"]][decide1]
calc <- which(acgen1ref == "A" & acgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#T for A
calc <- which(acgen1ref == "A" & acgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#C for A
calc <- which(acgen1ref == "A" & acgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#T for G
calc <- which(acgen1ref == "G" & acgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#C for G
calc <- which(acgen1ref == "G" & acgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#C for T
calc <- which(acgen1ref == "T" & acgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#T for C
calc <- which(acgen1ref == "C" & acgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#G for C
calc <- which(acgen1ref == "C" & acgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#A for C
calc <- which(acgen1ref == "C" & acgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#G for T
calc <- which(acgen1ref == "T" & acgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#A for T
calc <- which(acgen1ref == "T" & acgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

#A for G
calc <- which(acgen1ref == "G" & acgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AChr1Mut <- c(AChr1Mut, length(calc))

A1Avg <- AChr1Mut / ATP


#Calculations for African American Demographic

AAChr1Mut <- numeric()

#G for A
find1 <- aacgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
aacgen1ref <- aacgen[["Ref"]][decide1]
aacgen1alt <- aacgen[["Alt"]][decide1]
calc <- which(aacgen1ref == "A" & aacgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#T for A
calc <- which(aacgen1ref == "A" & aacgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#C for A
calc <- which(aacgen1ref == "A" & aacgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#T for G
calc <- which(aacgen1ref == "G" & aacgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#C for G
calc <- which(aacgen1ref == "G" & aacgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#C for T
calc <- which(aacgen1ref == "T" & aacgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#T for C
calc <- which(aacgen1ref == "C" & aacgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#G for C
calc <- which(aacgen1ref == "C" & aacgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#A for C
calc <- which(aacgen1ref == "C" & aacgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#G for T
calc <- which(aacgen1ref == "T" & aacgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#A for T
calc <- which(aacgen1ref == "T" & aacgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

#A for G
calc <- which(aacgen1ref == "G" & aacgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
AAChr1Mut <- c(AAChr1Mut, length(calc))

AA1Avg <- AAChr1Mut / ATP

#Calculations for Caucasion Demographic

CChr1Mut <- numeric()

#G for A
find1 <- ccgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
ccgen1ref <- ccgen[["Ref"]][decide1]
ccgen1alt <- ccgen[["Alt"]][decide1]
calc <- which(ccgen1ref == "A" & ccgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#T for A
calc <- which(ccgen1ref == "A" & ccgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#C for A
calc <- which(ccgen1ref == "A" & ccgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#T for G
calc <- which(ccgen1ref == "G" & ccgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#C for G
calc <- which(ccgen1ref == "G" & ccgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#C for T
calc <- which(ccgen1ref == "T" & ccgen1alt == "C", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#T for C
calc <- which(ccgen1ref == "C" & ccgen1alt == "T", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#G for C
calc <- which(ccgen1ref == "C" & ccgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#A for C
calc <- which(ccgen1ref == "C" & ccgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#G for T
calc <- which(ccgen1ref == "T" & ccgen1alt == "G", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#A for T
calc <- which(ccgen1ref == "T" & ccgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

#A for G
calc <- which(ccgen1ref == "G" & ccgen1alt == "A", arr.ind = FALSE, useNames = TRUE)
CChr1Mut <- c(CChr1Mut, length(calc))

C1Avg <- CChr1Mut / ATP


d1 <- data.frame(row.names = c("G for A","T for A","C for A","T for G","C for G","C for T","T for C","G for C","A for C","G for T","A for T","A for G"),A1Avg,AA1Avg,C1Avg)
clab <- c("G for A","T for A","C for A","T for G","C for G","C for T","T for C","G for C","A for C","G for T","A for T","A for G")

#make a matrix to create bar chart
d1 <- do.call(rbind, d1)
d1p <- barplot(d1, beside = TRUE, main="Average Substitutions on Chromosome 1", ylim = c(0,10), ylab = "Average",
        xlab="Subsitution Type",col=c("darkblue","green","red"), names.arg = clab,
        legend = c("African","African American","Caucasian"),
        args.legend = list(x = "top"))

