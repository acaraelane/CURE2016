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


chromosome <- 1

#Calculations for African Demographic

AChrMut <- numeric()

#G for A
find <- acgen[["Chr"]] == chromosome
decide <- which(find, arr.ind = FALSE, useNames = TRUE)
acgenref <- acgen[["Ref"]][decide]
acgenalt <- acgen[["Alt"]][decide]
calc <- which(acgenref == "A" & acgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#T for A
calc <- which(acgenref == "A" & acgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#C for A
calc <- which(acgenref == "A" & acgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#T for G
calc <- which(acgenref == "G" & acgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#C for G
calc <- which(acgenref == "G" & acgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#C for T
calc <- which(acgenref == "T" & acgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#T for C
calc <- which(acgenref == "C" & acgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#G for C
calc <- which(acgenref == "C" & acgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#A for C
calc <- which(acgenref == "C" & acgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#G for T
calc <- which(acgenref == "T" & acgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#A for T
calc <- which(acgenref == "T" & acgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

#A for G
calc <- which(acgenref == "G" & acgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AChrMut <- c(AChrMut, length(calc))

AAvg <- AChrMut / ATP


#Calculations for African American Demographic

AAChrMut <- numeric()

#G for A
find <- aacgen[["Chr"]] == chromosome
decide <- which(find, arr.ind = FALSE, useNames = TRUE)
aacgenref <- aacgen[["Ref"]][decide]
aacgenalt <- aacgen[["Alt"]][decide]
calc <- which(aacgenref == "A" & aacgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#T for A
calc <- which(aacgenref == "A" & aacgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#C for A
calc <- which(aacgenref == "A" & aacgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#T for G
calc <- which(aacgenref == "G" & aacgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#C for G
calc <- which(aacgenref == "G" & aacgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#C for T
calc <- which(aacgenref == "T" & aacgenalt == "C", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#T for C
calc <- which(aacgenref == "C" & aacgenalt == "T", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#G for C
calc <- which(aacgenref == "C" & aacgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#A for C
calc <- which(aacgenref == "C" & aacgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#G for T
calc <- which(aacgenref == "T" & aacgenalt == "G", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#A for T
calc <- which(aacgenref == "T" & aacgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

#A for G
calc <- which(aacgenref == "G" & aacgenalt == "A", arr.ind = FALSE, useNames = TRUE)
AAChrMut <- c(AAChrMut, length(calc))

AAAvg <- AAChrMut / ATP

#Calculations for Caucasion Demographic

CChrMut <- numeric()

#G for A
find <- ccgen[["Chr"]] == chromosome
decide <- which(find, arr.ind = FALSE, useNames = TRUE)
ccgenref <- ccgen[["Ref"]][decide]
ccgenalt <- ccgen[["Alt"]][decide]
calc <- which(ccgenref == "A" & ccgenalt == "G", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#T for A
calc <- which(ccgenref == "A" & ccgenalt == "T", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#C for A
calc <- which(ccgenref == "A" & ccgenalt == "C", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#T for G
calc <- which(ccgenref == "G" & ccgenalt == "T", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#C for G
calc <- which(ccgenref == "G" & ccgenalt == "C", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#C for T
calc <- which(ccgenref == "T" & ccgenalt == "C", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#T for C
calc <- which(ccgenref == "C" & ccgenalt == "T", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#G for C
calc <- which(ccgenref == "C" & ccgenalt == "G", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#A for C
calc <- which(ccgenref == "C" & ccgenalt == "A", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#G for T
calc <- which(ccgenref == "T" & ccgenalt == "G", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#A for T
calc <- which(ccgenref == "T" & ccgenalt == "A", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

#A for G
calc <- which(ccgenref == "G" & ccgenalt == "A", arr.ind = FALSE, useNames = TRUE)
CChrMut <- c(CChrMut, length(calc))

CAvg <- CChrMut / ATP


ds <- data.frame(row.names = c("G for A","T for A","C for A","T for G","C for G","C for T","T for C","G for C","A for C","G for T","A for T","A for G"),AAvg,AAAvg,CAvg)
clab <- c("G for A","T for A","C for A","T for G","C for G","C for T","T for C","G for C","A for C","G for T","A for T","A for G")

titlefor <- paste("Average Substitutions on Chromosome",as.character(chromosome))

savename <- paste(titlefor,".png")

png(savename)

#make a matrix to create bar chart
ds <- do.call(rbind, ds)
dp <- barplot(ds, beside = TRUE, main=titlefor, ylim = c(0,1.5), ylab = "Average",
               xlab="Subsitution Type",col=c("darkblue","green","red"), names.arg = clab,
               legend = c("African","African American","Caucasian"),
               args.legend = list(x = "topleft"))
dev.off()