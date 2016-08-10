pid_OBSCN <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_OBSCN.csv", header = FALSE)
nid_OBSCN <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_OBSCN.csv", header = FALSE)
pid_ANO3 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_ANO3.csv", header = FALSE)
nid_ANO3 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_ANO3.csv", header = FALSE)
pid_CDH4 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_CDH4.csv", header = FALSE)
nid_CDH4 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_CDH4.csv", header = FALSE)
pid_MEGF6 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_MEGF6.csv", header = FALSE)
nid_MEGF6 <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_MEGF6.csv", header = FALSE)
pid_OA <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_OBSCN_ANO3.csv", header = FALSE)
nid_OA <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_OBSCN_ANO3.csv", header = FALSE)
pid_OC <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_OBSCN_CDH4.csv", header = FALSE)
nid_OC <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_OBSCN_CDH4.csv", header = FALSE)
pid_OM <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_with_OBSCN_MEGF6.csv", header = FALSE)
nid_OM <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/patients_without_OBSCN_MEGF6.csv", header = FALSE)
clindat <- read.csv("~/IntroCodes/CURE2016/ClinicalDataPrep/prad_tcga_clinical_data.csv", sep = "\t", header = TRUE)

#Collect patient data
clin_IDs <- clindat[["Patient.ID"]]


#OBCSN
OBSCN_pids <- pid_OBSCN[["V1"]]
OBSCN_nids <- nid_OBSCN[["V1"]]

finder_pOBSCN <- which(clin_IDs %in% OBSCN_pids)
finder_nOBSCN <- which(clin_IDs %in% OBSCN_nids)

x_OBSCN_pids <- clindat[["Person.Neoplasm.Status"]][finder_pOBSCN]
y_OBSCN_nids <- clindat[["Person.Neoplasm.Status"]][finder_nOBSCN]

#calulations
plot_pOBSCN_dat <- x_OBSCN_pids[!is.na(x_OBSCN_pids)]
l_OBSCN_pids <- length(plot_pOBSCN_dat)
plot_nOBSCN_dat <- y_OBSCN_nids[!is.na(y_OBSCN_nids)]
l_OBSCN_nids <- length(plot_nOBSCN_dat)

WT_OBSCN <- sum(plot_pOBSCN_dat == "WITH TUMOR")
WOT_OBSCN <- sum(plot_nOBSCN_dat == "TUMOR FREE")

percentage_pOBSCN <- (WT_OBSCN/l_OBSCN_pids)*100
percentage_nOBSCN <- (WOT_OBSCN/l_OBSCN_nids)*100


#ANO3
ANO3_pids <- pid_ANO3[["V1"]]
ANO3_nids <- nid_ANO3[["V1"]]

finder_pANO3 <- which(clin_IDs %in% ANO3_pids)
finder_nANO3 <- which(clin_IDs %in% ANO3_nids)

x_ANO3_pids <- clindat[["Person.Neoplasm.Status"]][finder_pANO3]
y_ANO3_nids <- clindat[["Person.Neoplasm.Status"]][finder_nANO3]

#calulations
plot_pANO3_dat <- x_ANO3_pids[!is.na(x_ANO3_pids)]
l_ANO3_pids <- length(plot_pANO3_dat)
plot_nANO3_dat <- y_ANO3_nids[!is.na(y_ANO3_nids)]
l_ANO3_nids <- length(plot_nANO3_dat)

WT_ANO3 <- sum(plot_pANO3_dat == "WITH TUMOR")
WOT_ANO3 <- sum(plot_nANO3_dat == "TUMOR FREE")

percentage_pANO3 <- (WT_ANO3/l_ANO3_pids)*100
percentage_nANO3 <- (WOT_ANO3/l_ANO3_nids)*100


#CDH4
CDH4_pids <- pid_CDH4[["V1"]]
CDH4_nids <- nid_CDH4[["V1"]]

finder_pCDH4 <- which(clin_IDs %in% CDH4_pids)
finder_nCDH4 <- which(clin_IDs %in% CDH4_nids)

x_CDH4_pids <- clindat[["Person.Neoplasm.Status"]][finder_pCDH4]
y_CDH4_nids <- clindat[["Person.Neoplasm.Status"]][finder_nCDH4]

#calulations
plot_pCDH4_dat <- x_CDH4_pids[!is.na(x_CDH4_pids)]
l_CDH4_pids <- length(plot_pCDH4_dat)
plot_nCDH4_dat <- y_CDH4_nids[!is.na(y_CDH4_nids)]
l_CDH4_nids <- length(plot_nCDH4_dat)

WT_CDH4 <- sum(plot_pCDH4_dat == "WITH TUMOR")
WOT_CDH4 <- sum(plot_nCDH4_dat == "TUMOR FREE")

percentage_pCDH4 <- (WT_CDH4/l_CDH4_pids)*100
percentage_nCDH4 <- (WOT_CDH4/l_CDH4_nids)*100


#MEGF6
MEGF6_pids <- pid_MEGF6[["V1"]]
MEGF6_nids <- nid_MEGF6[["V1"]]

finder_pMEGF6 <- which(clin_IDs %in% MEGF6_pids)
finder_nMEGF6 <- which(clin_IDs %in% MEGF6_nids)

x_MEGF6_pids <- clindat[["Person.Neoplasm.Status"]][finder_pMEGF6]
y_MEGF6_nids <- clindat[["Person.Neoplasm.Status"]][finder_nMEGF6]

#calulations
plot_pMEGF6_dat <- x_MEGF6_pids[!is.na(x_MEGF6_pids)]
l_MEGF6_pids <- length(plot_pMEGF6_dat)
plot_nMEGF6_dat <- y_MEGF6_nids[!is.na(y_MEGF6_nids)]
l_MEGF6_nids <- length(plot_nMEGF6_dat)

WT_MEGF6 <- sum(plot_pMEGF6_dat == "WITH TUMOR")
WOT_MEGF6 <- sum(plot_nMEGF6_dat == "TUMOR FREE")

percentage_pMEGF6 <- (WT_MEGF6/l_MEGF6_pids)*100
percentage_nMEGF6 <- (WOT_MEGF6/l_MEGF6_nids)*100

#OBCSN and ANO3
OA_pids <- pid_OA[["V1"]]
OA_nids <- nid_OA[["V1"]]

finder_pOA <- which(clin_IDs %in% OA_pids)
finder_nOA <- which(clin_IDs %in% OA_nids)

x_OA_pids <- clindat[["Person.Neoplasm.Status"]][finder_pOA]
y_OA_nids <- clindat[["Person.Neoplasm.Status"]][finder_nOA]

#calulations
plot_pOA_dat <- x_OA_pids[!is.na(x_OA_pids)]
l_OA_pids <- length(plot_pOA_dat)
plot_nOA_dat <- y_OA_nids[!is.na(y_OA_nids)]
l_OA_nids <- length(plot_nOA_dat)

WT_OA <- sum(plot_pOA_dat == "WITH TUMOR")
WOT_OA <- sum(plot_nOA_dat == "TUMOR FREE")

percentage_pOA <- (WT_OA/l_OA_pids)*100
percentage_nOA <- (WOT_OA/l_OA_nids)*100


#OBCSN and CDH4
OC_pids <- pid_OC[["V1"]]
OC_nids <- nid_OC[["V1"]]

finder_pOC <- which(clin_IDs %in% OC_pids)
finder_nOC <- which(clin_IDs %in% OC_nids)

x_OC_pids <- clindat[["Person.Neoplasm.Status"]][finder_pOC]
y_OC_nids <- clindat[["Person.Neoplasm.Status"]][finder_nOC]

#calulations
plot_pOC_dat <- x_OC_pids[!is.na(x_OC_pids)]
l_OC_pids <- length(plot_pOC_dat)
plot_nOC_dat <- y_OC_nids[!is.na(y_OC_nids)]
l_OC_nids <- length(plot_nOC_dat)

WT_OC <- sum(plot_pOC_dat == "WITH TUMOR")
WOT_OC <- sum(plot_nOC_dat == "TUMOR FREE")

percentage_pOC <- (WT_OC/l_OC_pids)*100
percentage_nOC <- (WOT_OC/l_OC_nids)*100


#OBCSN and MEGF6
OM_pids <- pid_OM[["V1"]]
OM_nids <- nid_OM[["V1"]]

finder_pOM <- which(clin_IDs %in% OM_pids)
finder_nOM <- which(clin_IDs %in% OM_nids)

x_OM_pids <- clindat[["Person.Neoplasm.Status"]][finder_pOM]
y_OM_nids <- clindat[["Person.Neoplasm.Status"]][finder_nOM]

#calulations
plot_pOM_dat <- x_OM_pids[!is.na(x_OM_pids)]
l_OM_pids <- length(plot_pOM_dat)
plot_nOM_dat <- y_OM_nids[!is.na(y_OM_nids)]
l_OM_nids <- length(plot_nOM_dat)


WT_OM <- sum(plot_pOM_dat == "WITH TUMOR")
WOT_OM <- sum(plot_nOM_dat == "TUMOR FREE")

percentage_pOM <- (WT_OM/l_OM_pids)*100
percentage_nOM <- (WOT_OM/l_OM_nids)*100


# Percentage of Set with Tumor and Without (bar graph)
d1 <- matrix(c(percentage_pOBSCN,percentage_nOBSCN,percentage_pANO3,percentage_nANO3,percentage_pCDH4,percentage_nCDH4,percentage_pMEGF6,percentage_nMEGF6,percentage_pOA,percentage_nOA,percentage_pOC,percentage_nOC,percentage_pOM,percentage_nOM),ncol=7,byrow = FALSE)
colnames(d1) <- c("OBSCN","ANO3","CDH4","MEGF6","OBSCN/ANO3","OBSCN/CDH4","OBSCN/MEGF6")
rownames(d1) <- c("With Mutation", "Without Mutation")
d1 <- as.table(d1)

d1p <- barplot(d1, beside = TRUE, main="Neoplasm Status of Patients \n(% With Tumor)", ylim = c(0,100), ylab = "Percentage",
               xlab="Genes",col=c("darkblue","orange"), #names.arg = clab,
               legend = c("+ Mutation","- Mutation"),
               args.legend = list(x = "top"))


