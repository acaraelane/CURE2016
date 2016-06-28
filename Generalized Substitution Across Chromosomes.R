
#load files for African, African Americans, and Caucasians)
acgen <- read.csv("~/Documents/CURE2016/Project/Project Data/Afiltered_mutations_in_african.hg19_multianno.csv")
aacgen <- read.csv("~/Documents/CURE2016/Project/Project Data/AAfiltered_mutations_in_tcga_aa.hg19_multianno.csv")
ccgen <- read.csv("~/Documents/CURE2016/Project/Project Data/Cfiltered_mutations_in_tcga_white.hg19_multianno.csv")

#View(acgen)
#View(aacgen)
#View(ccgen)

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

refnuc <- "G" #reference nucloetide
curnuc <- "A" #patient's nucleotide

#Calculations for African Demographic

AChrMut <- numeric()

find1 <- acgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
acgen1ref <- acgen[["Ref"]][decide1]
acgen1alt <- acgen[["Alt"]][decide1]
calc <- which(acgen1ref == refnuc & acgen1alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find2 <- acgen[["Chr"]] == 2
decide2 <- which(find2, arr.ind = FALSE, useNames = TRUE)
acgen2ref <- acgen[["Ref"]][decide2]
acgen2alt <- acgen[["Alt"]][decide2]
calc <- which(acgen2ref == refnuc & acgen2alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find3 <- acgen[["Chr"]] == 3
decide3 <- which(find3, arr.ind = FALSE, useNames = TRUE)
acgen3ref <- acgen[["Ref"]][decide3]
acgen3alt <- acgen[["Alt"]][decide3]
calc <- which(acgen3ref == refnuc & acgen3alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find4 <- acgen[["Chr"]] == 4
decide4 <- which(find4, arr.ind = FALSE, useNames = TRUE)
acgen4ref <- acgen[["Ref"]][decide4]
acgen4alt <- acgen[["Alt"]][decide4]
calc <- which(acgen4ref == refnuc & acgen4alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find5 <- acgen[["Chr"]] == 5
decide5 <- which(find5, arr.ind = FALSE, useNames = TRUE)
acgen5ref <- acgen[["Ref"]][decide5]
acgen5alt <- acgen[["Alt"]][decide5]
calc <- which(acgen5ref == refnuc & acgen5alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find6 <- acgen[["Chr"]] == 6
decide6 <- which(find6, arr.ind = FALSE, useNames = TRUE)
acgen6ref <- acgen[["Ref"]][decide6]
acgen6alt <- acgen[["Alt"]][decide6]
calc <- which(acgen6ref == refnuc & acgen6alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find7 <- acgen[["Chr"]] == 7
decide7 <- which(find7, arr.ind = FALSE, useNames = TRUE)
acgen7ref <- acgen[["Ref"]][decide7]
acgen7alt <- acgen[["Alt"]][decide7]
calc <- which(acgen7ref == refnuc & acgen7alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find8 <- acgen[["Chr"]] == 8
decide8 <- which(find8, arr.ind = FALSE, useNames = TRUE)
acgen8ref <- acgen[["Ref"]][decide8]
acgen8alt <- acgen[["Alt"]][decide8]
calc <- which(acgen8ref == refnuc & acgen8alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find9 <- acgen[["Chr"]] == 9
decide9 <- which(find9, arr.ind = FALSE, useNames = TRUE)
acgen9ref <- acgen[["Ref"]][decide9]
acgen9alt <- acgen[["Alt"]][decide9]
calc <- which(acgen9ref == refnuc & acgen9alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find10 <- acgen[["Chr"]] == 10
decide10 <- which(find10, arr.ind = FALSE, useNames = TRUE)
acgen10ref <- acgen[["Ref"]][decide10]
acgen10alt <- acgen[["Alt"]][decide10]
calc <- which(acgen10ref == refnuc & acgen10alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find11 <- acgen[["Chr"]] == 11
decide11 <- which(find11, arr.ind = FALSE, useNames = TRUE)
acgen11ref <- acgen[["Ref"]][decide11]
acgen11alt <- acgen[["Alt"]][decide11]
calc <- which(acgen11ref == refnuc & acgen11alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find12 <- acgen[["Chr"]] == 12
decide12 <- which(find12, arr.ind = FALSE, useNames = TRUE)
acgen12ref <- acgen[["Ref"]][decide12]
acgen12alt <- acgen[["Alt"]][decide12]
calc <- which(acgen12ref == refnuc & acgen12alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find13 <- acgen[["Chr"]] == 13
decide13 <- which(find13, arr.ind = FALSE, useNames = TRUE)
acgen13ref <- acgen[["Ref"]][decide13]
acgen13alt <- acgen[["Alt"]][decide13]
calc <- which(acgen13ref == refnuc & acgen13alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find14 <- acgen[["Chr"]] == 14
decide14 <- which(find14, arr.ind = FALSE, useNames = TRUE)
acgen14ref <- acgen[["Ref"]][decide14]
acgen14alt <- acgen[["Alt"]][decide14]
calc <- which(acgen14ref == refnuc & acgen14alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find15 <- acgen[["Chr"]] == 15
decide15 <- which(find15, arr.ind = FALSE, useNames = TRUE)
acgen15ref <- acgen[["Ref"]][decide15]
acgen15alt <- acgen[["Alt"]][decide15]
calc <- which(acgen15ref == refnuc & acgen15alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find16 <- acgen[["Chr"]] == 16
decide16 <- which(find16, arr.ind = FALSE, useNames = TRUE)
acgen16ref <- acgen[["Ref"]][decide16]
acgen16alt <- acgen[["Alt"]][decide16]
calc <- which(acgen16ref == refnuc & acgen16alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find17 <- acgen[["Chr"]] == 17
decide17 <- which(find17, arr.ind = FALSE, useNames = TRUE)
acgen17ref <- acgen[["Ref"]][decide17]
acgen17alt <- acgen[["Alt"]][decide17]
calc <- which(acgen17ref == refnuc & acgen17alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find18 <- acgen[["Chr"]] == 18
decide18 <- which(find18, arr.ind = FALSE, useNames = TRUE)
acgen18ref <- acgen[["Ref"]][decide18]
acgen18alt <- acgen[["Alt"]][decide18]
calc <- which(acgen18ref == refnuc & acgen18alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find19 <- acgen[["Chr"]] == 19
decide19 <- which(find19, arr.ind = FALSE, useNames = TRUE)
acgen19ref <- acgen[["Ref"]][decide19]
acgen19alt <- acgen[["Alt"]][decide19]
calc <- which(acgen19ref == refnuc & acgen19alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find20 <- acgen[["Chr"]] == 20
decide20 <- which(find20, arr.ind = FALSE, useNames = TRUE)
acgen20ref <- acgen[["Ref"]][decide20]
acgen20alt <- acgen[["Alt"]][decide20]
calc <- which(acgen20ref == refnuc & acgen20alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find21 <- acgen[["Chr"]] == 21
decide21 <- which(find21, arr.ind = FALSE, useNames = TRUE)
acgen21ref <- acgen[["Ref"]][decide21]
acgen21alt <- acgen[["Alt"]][decide21]
calc <- which(acgen21ref == refnuc & acgen21alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

find22 <- acgen[["Chr"]] == 22
decide22 <- which(find22, arr.ind = FALSE, useNames = TRUE)
acgen22ref <- acgen[["Ref"]][decide22]
acgen22alt <- acgen[["Alt"]][decide22]
calc <- which(acgen22ref == refnuc & acgen22alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

findX <- acgen[["Chr"]] == "X"
decideX <- which(findX, arr.ind = FALSE, useNames = TRUE)
acgenXref <- acgen[["Ref"]][decideX]
acgenXalt <- acgen[["Alt"]][decideX]
calc <- which(acgenXref == refnuc & acgenXalt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

findY <- acgen[["Chr"]] == "Y"
decideY <- which(findY, arr.ind = FALSE, useNames = TRUE)
acgenYref <- acgen[["Ref"]][decideY]
acgenYalt <- acgen[["Alt"]][decideY]
calc <- which(acgenYref == refnuc & acgenYalt == curnuc, arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

AChrAvg <- AChrMut / ATP

#Calculations for African American Demographic

AAChrMut <- numeric()

find1 <- aacgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
aacgen1ref <- aacgen[["Ref"]][decide1]
aacgen1alt <- aacgen[["Alt"]][decide1]
calc <- which(aacgen1ref == refnuc & aacgen1alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find2 <- aacgen[["Chr"]] == 2
decide2 <- which(find2, arr.ind = FALSE, useNames = TRUE)
aacgen2ref <- aacgen[["Ref"]][decide2]
aacgen2alt <- aacgen[["Alt"]][decide2]
calc <- which(aacgen2ref == refnuc & aacgen2alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find3 <- aacgen[["Chr"]] == 3
decide3 <- which(find3, arr.ind = FALSE, useNames = TRUE)
aacgen3ref <- aacgen[["Ref"]][decide3]
aacgen3alt <- aacgen[["Alt"]][decide3]
calc <- which(aacgen3ref == refnuc & aacgen3alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find4 <- aacgen[["Chr"]] == 4
decide4 <- which(find4, arr.ind = FALSE, useNames = TRUE)
aacgen4ref <- aacgen[["Ref"]][decide4]
aacgen4alt <- aacgen[["Alt"]][decide4]
calc <- which(aacgen4ref == refnuc & aacgen4alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find5 <- aacgen[["Chr"]] == 5
decide5 <- which(find5, arr.ind = FALSE, useNames = TRUE)
aacgen5ref <- aacgen[["Ref"]][decide5]
aacgen5alt <- aacgen[["Alt"]][decide5]
calc <- which(aacgen5ref == refnuc & aacgen5alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find6 <- aacgen[["Chr"]] == 6
decide6 <- which(find6, arr.ind = FALSE, useNames = TRUE)
aacgen6ref <- aacgen[["Ref"]][decide6]
aacgen6alt <- aacgen[["Alt"]][decide6]
calc <- which(aacgen6ref == refnuc & aacgen6alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find7 <- aacgen[["Chr"]] == 7
decide7 <- which(find7, arr.ind = FALSE, useNames = TRUE)
aacgen7ref <- aacgen[["Ref"]][decide7]
aacgen7alt <- aacgen[["Alt"]][decide7]
calc <- which(aacgen7ref == refnuc & aacgen7alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find8 <- aacgen[["Chr"]] == 8
decide8 <- which(find8, arr.ind = FALSE, useNames = TRUE)
aacgen8ref <- aacgen[["Ref"]][decide8]
aacgen8alt <- aacgen[["Alt"]][decide8]
calc <- which(aacgen8ref == refnuc & aacgen8alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find9 <- aacgen[["Chr"]] == 9
decide9 <- which(find9, arr.ind = FALSE, useNames = TRUE)
aacgen9ref <- aacgen[["Ref"]][decide9]
aacgen9alt <- aacgen[["Alt"]][decide9]
calc <- which(aacgen9ref == refnuc & aacgen9alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find10 <- aacgen[["Chr"]] == 10
decide10 <- which(find10, arr.ind = FALSE, useNames = TRUE)
aacgen10ref <- aacgen[["Ref"]][decide10]
aacgen10alt <- aacgen[["Alt"]][decide10]
calc <- which(aacgen10ref == refnuc & aacgen10alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find11 <- aacgen[["Chr"]] == 11
decide11 <- which(find11, arr.ind = FALSE, useNames = TRUE)
aacgen11ref <- aacgen[["Ref"]][decide11]
aacgen11alt <- aacgen[["Alt"]][decide11]
calc <- which(aacgen11ref == refnuc & aacgen11alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find12 <- aacgen[["Chr"]] == 12
decide12 <- which(find12, arr.ind = FALSE, useNames = TRUE)
aacgen12ref <- aacgen[["Ref"]][decide12]
aacgen12alt <- aacgen[["Alt"]][decide12]
calc <- which(aacgen12ref == refnuc & aacgen12alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find13 <- aacgen[["Chr"]] == 13
decide13 <- which(find13, arr.ind = FALSE, useNames = TRUE)
aacgen13ref <- aacgen[["Ref"]][decide13]
aacgen13alt <- aacgen[["Alt"]][decide13]
calc <- which(aacgen13ref == refnuc & aacgen13alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find14 <- aacgen[["Chr"]] == 14
decide14 <- which(find14, arr.ind = FALSE, useNames = TRUE)
aacgen14ref <- aacgen[["Ref"]][decide14]
aacgen14alt <- aacgen[["Alt"]][decide14]
calc <- which(aacgen14ref == refnuc & aacgen14alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find15 <- aacgen[["Chr"]] == 15
decide15 <- which(find15, arr.ind = FALSE, useNames = TRUE)
aacgen15ref <- aacgen[["Ref"]][decide15]
aacgen15alt <- aacgen[["Alt"]][decide15]
calc <- which(aacgen15ref == refnuc & aacgen15alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find16 <- aacgen[["Chr"]] == 16
decide16 <- which(find16, arr.ind = FALSE, useNames = TRUE)
aacgen16ref <- aacgen[["Ref"]][decide16]
aacgen16alt <- aacgen[["Alt"]][decide16]
calc <- which(aacgen16ref == refnuc & aacgen16alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find17 <- aacgen[["Chr"]] == 17
decide17 <- which(find17, arr.ind = FALSE, useNames = TRUE)
aacgen17ref <- aacgen[["Ref"]][decide17]
aacgen17alt <- aacgen[["Alt"]][decide17]
calc <- which(aacgen17ref == refnuc & aacgen17alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find18 <- acgen[["Chr"]] == 18
decide18 <- which(find18, arr.ind = FALSE, useNames = TRUE)
aacgen18ref <- aacgen[["Ref"]][decide18]
aacgen18alt <- aacgen[["Alt"]][decide18]
calc <- which(aacgen18ref == refnuc & aacgen18alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find19 <- aacgen[["Chr"]] == 19
decide19 <- which(find19, arr.ind = FALSE, useNames = TRUE)
aacgen19ref <- aacgen[["Ref"]][decide19]
aacgen19alt <- aacgen[["Alt"]][decide19]
calc <- which(aacgen19ref == refnuc & aacgen19alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find20 <- aacgen[["Chr"]] == 20
decide20 <- which(find20, arr.ind = FALSE, useNames = TRUE)
aacgen20ref <- aacgen[["Ref"]][decide20]
aacgen20alt <- aacgen[["Alt"]][decide20]
calc <- which(aacgen20ref == refnuc & aacgen20alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find21 <- aacgen[["Chr"]] == 21
decide21 <- which(find21, arr.ind = FALSE, useNames = TRUE)
aacgen21ref <- aacgen[["Ref"]][decide21]
aacgen21alt <- aacgen[["Alt"]][decide21]
calc <- which(aacgen21ref == refnuc & aacgen21alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

find22 <- aacgen[["Chr"]] == 22
decide22 <- which(find22, arr.ind = FALSE, useNames = TRUE)
aacgen22ref <- aacgen[["Ref"]][decide22]
aacgen22alt <- aacgen[["Alt"]][decide22]
calc <- which(aacgen22ref == refnuc & aacgen22alt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

findX <- aacgen[["Chr"]] == "X"
decideX <- which(findX, arr.ind = FALSE, useNames = TRUE)
aacgenXref <- aacgen[["Ref"]][decideX]
aacgenXalt <- aacgen[["Alt"]][decideX]
calc <- which(aacgenXref == refnuc & aacgenXalt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

findY <- aacgen[["Chr"]] == "Y"
decideY <- which(findY, arr.ind = FALSE, useNames = TRUE)
aacgenYref <- aacgen[["Ref"]][decideY]
aacgenYalt <- aacgen[["Alt"]][decideY]
calc <- which(aacgenYref == refnuc & aacgenYalt == curnuc, arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

AAChrAvg <- AAChrMut / AATP

#Calculations for Caucasion Demographic

CChrMut <- numeric()

find1 <- ccgen[["Chr"]] == 1
decide1 <- which(find1, arr.ind = FALSE, useNames = TRUE)
ccgen1ref <- ccgen[["Ref"]][decide1]
ccgen1alt <- ccgen[["Alt"]][decide1]
calc <- which(ccgen1ref == refnuc & ccgen1alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find2 <- ccgen[["Chr"]] == 2
decide2 <- which(find2, arr.ind = FALSE, useNames = TRUE)
ccgen2ref <- ccgen[["Ref"]][decide2]
ccgen2alt <- ccgen[["Alt"]][decide2]
calc <- which(ccgen2ref == refnuc & ccgen2alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find3 <- ccgen[["Chr"]] == 3
decide3 <- which(find3, arr.ind = FALSE, useNames = TRUE)
ccgen3ref <- ccgen[["Ref"]][decide3]
ccgen3alt <- ccgen[["Alt"]][decide3]
calc <- which(ccgen3ref == refnuc & ccgen3alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find4 <- ccgen[["Chr"]] == 4
decide4 <- which(find4, arr.ind = FALSE, useNames = TRUE)
ccgen4ref <- ccgen[["Ref"]][decide4]
ccgen4alt <- ccgen[["Alt"]][decide4]
calc <- which(ccgen4ref == refnuc & ccgen4alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find5 <- ccgen[["Chr"]] == 5
decide5 <- which(find5, arr.ind = FALSE, useNames = TRUE)
ccgen5ref <- ccgen[["Ref"]][decide5]
ccgen5alt <- ccgen[["Alt"]][decide5]
calc <- which(ccgen5ref == refnuc & ccgen5alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find6 <- ccgen[["Chr"]] == 6
decide6 <- which(find6, arr.ind = FALSE, useNames = TRUE)
ccgen6ref <- ccgen[["Ref"]][decide6]
ccgen6alt <- ccgen[["Alt"]][decide6]
calc <- which(ccgen6ref == refnuc & ccgen6alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find7 <- ccgen[["Chr"]] == 7
decide7 <- which(find7, arr.ind = FALSE, useNames = TRUE)
ccgen7ref <- ccgen[["Ref"]][decide7]
ccgen7alt <- ccgen[["Alt"]][decide7]
calc <- which(ccgen7ref == refnuc & ccgen7alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find8 <- ccgen[["Chr"]] == 8
decide8 <- which(find8, arr.ind = FALSE, useNames = TRUE)
ccgen8ref <- ccgen[["Ref"]][decide8]
ccgen8alt <- ccgen[["Alt"]][decide8]
calc <- which(ccgen8ref == refnuc & ccgen8alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find9 <- ccgen[["Chr"]] == 9
decide9 <- which(find9, arr.ind = FALSE, useNames = TRUE)
ccgen9ref <- ccgen[["Ref"]][decide9]
ccgen9alt <- ccgen[["Alt"]][decide9]
calc <- which(ccgen9ref == refnuc & ccgen9alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find10 <- ccgen[["Chr"]] == 10
decide10 <- which(find10, arr.ind = FALSE, useNames = TRUE)
ccgen10ref <- ccgen[["Ref"]][decide10]
ccgen10alt <- ccgen[["Alt"]][decide10]
calc <- which(ccgen10ref == refnuc & ccgen10alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find11 <- ccgen[["Chr"]] == 11
decide11 <- which(find11, arr.ind = FALSE, useNames = TRUE)
ccgen11ref <- ccgen[["Ref"]][decide11]
ccgen11alt <- ccgen[["Alt"]][decide11]
calc <- which(ccgen11ref == refnuc & ccgen11alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find12 <- ccgen[["Chr"]] == 12
decide12 <- which(find12, arr.ind = FALSE, useNames = TRUE)
ccgen12ref <- ccgen[["Ref"]][decide12]
ccgen12alt <- ccgen[["Alt"]][decide12]
calc <- which(ccgen12ref == refnuc & ccgen12alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find13 <- ccgen[["Chr"]] == 13
decide13 <- which(find13, arr.ind = FALSE, useNames = TRUE)
ccgen13ref <- ccgen[["Ref"]][decide13]
ccgen13alt <- ccgen[["Alt"]][decide13]
calc <- which(ccgen13ref == refnuc & ccgen13alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find14 <- ccgen[["Chr"]] == 14
decide14 <- which(find14, arr.ind = FALSE, useNames = TRUE)
ccgen14ref <- ccgen[["Ref"]][decide14]
ccgen14alt <- ccgen[["Alt"]][decide14]
calc <- which(ccgen14ref == refnuc & ccgen14alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find15 <- ccgen[["Chr"]] == 15
decide15 <- which(find15, arr.ind = FALSE, useNames = TRUE)
ccgen15ref <- ccgen[["Ref"]][decide15]
ccgen15alt <- ccgen[["Alt"]][decide15]
calc <- which(ccgen15ref == refnuc & ccgen15alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find16 <- ccgen[["Chr"]] == 16
decide16 <- which(find16, arr.ind = FALSE, useNames = TRUE)
ccgen16ref <- ccgen[["Ref"]][decide16]
ccgen16alt <- ccgen[["Alt"]][decide16]
calc <- which(ccgen16ref == refnuc & ccgen16alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find17 <- ccgen[["Chr"]] == 17
decide17 <- which(find17, arr.ind = FALSE, useNames = TRUE)
ccgen17ref <- ccgen[["Ref"]][decide17]
ccgen17alt <- ccgen[["Alt"]][decide17]
calc <- which(ccgen17ref == refnuc & ccgen17alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find18 <- ccgen[["Chr"]] == 18
decide18 <- which(find18, arr.ind = FALSE, useNames = TRUE)
ccgen18ref <- ccgen[["Ref"]][decide18]
ccgen18alt <- ccgen[["Alt"]][decide18]
calc <- which(ccgen18ref == refnuc & ccgen18alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find19 <- ccgen[["Chr"]] == 19
decide19 <- which(find19, arr.ind = FALSE, useNames = TRUE)
ccgen19ref <- ccgen[["Ref"]][decide19]
ccgen19alt <- ccgen[["Alt"]][decide19]
calc <- which(ccgen19ref == refnuc & ccgen19alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find20 <- ccgen[["Chr"]] == 20
decide20 <- which(find20, arr.ind = FALSE, useNames = TRUE)
ccgen20ref <- ccgen[["Ref"]][decide20]
ccgen20alt <- ccgen[["Alt"]][decide20]
calc <- which(ccgen20ref == refnuc & ccgen20alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find21 <- ccgen[["Chr"]] == 21
decide21 <- which(find21, arr.ind = FALSE, useNames = TRUE)
ccgen21ref <- ccgen[["Ref"]][decide21]
ccgen21alt <- ccgen[["Alt"]][decide21]
calc <- which(ccgen21ref == refnuc & ccgen21alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

find22 <- ccgen[["Chr"]] == 22
decide22 <- which(find22, arr.ind = FALSE, useNames = TRUE)
ccgen22ref <- ccgen[["Ref"]][decide22]
ccgen22alt <- ccgen[["Alt"]][decide22]
calc <- which(ccgen22ref == refnuc & ccgen22alt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

findX <- ccgen[["Chr"]] == "X"
decideX <- which(findX, arr.ind = FALSE, useNames = TRUE)
ccgenXref <- ccgen[["Ref"]][decideX]
ccgenXalt <- ccgen[["Alt"]][decideX]
calc <- which(ccgenXref == refnuc & ccgenXalt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

findY <- ccgen[["Chr"]] == "Y"
decideY <- which(findY, arr.ind = FALSE, useNames = TRUE)
ccgenYref <- ccgen[["Ref"]][decideY]
ccgenYalt <- ccgen[["Alt"]][decideY]
calc <- which(ccgenYref == refnuc & ccgenYalt == curnuc, arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

CChrAvg <- CChrMut / CTP


titlefor <- paste("Average",curnuc,"for",refnuc,"Substitutions")

dAvg <- data.frame(row.names = c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","X","Y"),AChrAvg, AAChrAvg,CChrAvg)
clab <- c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","X","Y")
#make a matrix to create bar chart
dAvg <- do.call(rbind, dAvg)
barplot(dAvg, beside = TRUE, main=titlefor, ylab = "Average Number of Mutations", ylim = c(0,12),
        xlab="Chromosome",col=c("darkblue","green","red"),names.arg = clab,
        legend = c("African","African American","Caucasian"),
        args.legend = list(x = "topright"))
