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

x_OBSCN_pids <- clindat[["Diagnosis.Age"]][finder_pOBSCN]
y_OBSCN_nids <- clindat[["Diagnosis.Age"]][finder_nOBSCN]

#calulations
plot_pOBSCN_dat <- x_OBSCN_pids[!is.na(x_OBSCN_pids)]
plot_nOBSCN_dat <- y_OBSCN_nids[!is.na(y_OBSCN_nids)]

m_pOBSCN = mean(plot_pOBSCN_dat)
m_nOBSCN = mean(plot_nOBSCN_dat)


#ANO3
ANO3_pids <- pid_ANO3[["V1"]]
ANO3_nids <- nid_ANO3[["V1"]]

finder_pANO3 <- which(clin_IDs %in% ANO3_pids)
finder_nANO3 <- which(clin_IDs %in% ANO3_nids)

x_ANO3_pids <- clindat[["Diagnosis.Age"]][finder_pANO3]
y_ANO3_nids <- clindat[["Diagnosis.Age"]][finder_nANO3]

#calculations
plot_pANO3_dat <- x_ANO3_pids[!is.na(x_ANO3_pids)]
plot_nANO3_dat <- y_ANO3_nids[!is.na(y_ANO3_nids)]

m_pANO3 = mean(plot_pANO3_dat)
m_nANO3 = mean(plot_nANO3_dat)


#CDH4
CDH4_pids <- pid_CDH4[["V1"]]
CDH4_nids <- nid_CDH4[["V1"]]

finder_pCDH4 <- which(clin_IDs %in% CDH4_pids)
finder_nCDH4 <- which(clin_IDs %in% CDH4_nids)

x_CDH4_pids <- clindat[["Diagnosis.Age"]][finder_pCDH4]
y_CDH4_nids <- clindat[["Diagnosis.Age"]][finder_nCDH4]

#calculations
plot_pCDH4_dat <- x_CDH4_pids[!is.na(x_CDH4_pids)]
plot_nCDH4_dat <- y_CDH4_nids[!is.na(y_CDH4_nids)]

m_pCDH4 = mean(plot_pCDH4_dat)
m_nCDH4 = mean(plot_nCDH4_dat)


#MEGF6
MEGF6_pids <- pid_MEGF6[["V1"]]
MEGF6_nids <- nid_MEGF6[["V1"]]

finder_pMEGF6 <- which(clin_IDs %in% MEGF6_pids)
finder_nMEGF6 <- which(clin_IDs %in% MEGF6_nids)

x_MEGF6_pids <- clindat[["Diagnosis.Age"]][finder_pMEGF6]
y_MEGF6_nids <- clindat[["Diagnosis.Age"]][finder_nMEGF6]

#calculations
plot_pMEGF6_dat <- x_MEGF6_pids[!is.na(x_MEGF6_pids)]
plot_nMEGF6_dat <- y_MEGF6_nids[!is.na(y_MEGF6_nids)]

m_pMEGF6 = mean(plot_pMEGF6_dat)
m_nMEGF6 = mean(plot_nMEGF6_dat)


#OBCSN and ANO3
OA_pids <- pid_OA[["V1"]]
OA_nids <- nid_OA[["V1"]]

finder_pOA <- which(clin_IDs %in% OA_pids)
finder_nOA <- which(clin_IDs %in% OA_nids)

x_OA_pids <- clindat[["Diagnosis.Age"]][finder_pOA]
y_OA_nids <- clindat[["Diagnosis.Age"]][finder_nOA]

#calulations
plot_pOA_dat <- x_OA_pids[!is.na(x_OA_pids)]
plot_nOA_dat <- y_OA_nids[!is.na(y_OA_nids)]

m_pOA = mean(plot_pOA_dat)
m_nOA = mean(plot_nOA_dat)


#OBCSN and CDH4
OC_pids <- pid_OC[["V1"]]
OC_nids <- nid_OC[["V1"]]

finder_pOC <- which(clin_IDs %in% OC_pids)
finder_nOC <- which(clin_IDs %in% OC_nids)

x_OC_pids <- clindat[["Diagnosis.Age"]][finder_pOC]
y_OC_nids <- clindat[["Diagnosis.Age"]][finder_nOC]

#calulations
plot_pOC_dat <- x_OC_pids[!is.na(x_OC_pids)]
plot_nOC_dat <- y_OC_nids[!is.na(y_OC_nids)]

m_pOC = mean(plot_pOC_dat)
m_nOC = mean(plot_nOC_dat)


#OBCSN and MEGF6
OM_pids <- pid_OM[["V1"]]
OM_nids <- nid_OM[["V1"]]

finder_pOM <- which(clin_IDs %in% OM_pids)
finder_nOM <- which(clin_IDs %in% OM_nids)

x_OM_pids <- clindat[["Diagnosis.Age"]][finder_pOM]
y_OM_nids <- clindat[["Diagnosis.Age"]][finder_nOM]

#calulations
plot_pOM_dat <- x_OM_pids[!is.na(x_OM_pids)]
plot_nOM_dat <- y_OM_nids[!is.na(y_OM_nids)]

m_pOM = mean(plot_pOM_dat)
m_nOM = mean(plot_nOM_dat)


#Create Stacked Bar Graph of Average Ages

d1 <- matrix(c(m_pOBSCN,m_nOBSCN,m_pANO3,m_nANO3,m_pCDH4,m_nCDH4,m_pMEGF6,m_nMEGF6,m_pOA,m_nOA,m_pOC,m_nOC,m_pOM,m_nOM),ncol=7,byrow = FALSE)
colnames(d1) <- c("OBSCN","ANO3","CDH4","MEGF6","OBSCN/ANO3","OBSCN/CDH4","OBSCN/MEGF6")
rownames(d1) <- c("With Mutation", "Without Mutation")
d1 <- as.table(d1)

d1p <- barplot(d1, beside = TRUE, main="Splice Site Mutations May Not Effect the Average Age of Patients", ylim = c(0,70), ylab = "Age (years)",
               xlab="Genes",col=c("darkblue","orange"), #names.arg = clab,
               legend = c("+ Mutation","- Mutation"),
               args.legend = list(x = "top"))


