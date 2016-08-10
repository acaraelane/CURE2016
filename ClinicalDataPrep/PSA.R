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

x_OBSCN_pids <- clindat[["Psa.most.recent.results"]][finder_pOBSCN]
y_OBSCN_nids <- clindat[["Psa.most.recent.results"]][finder_nOBSCN]

#calulations
m_pOBSCN = mean(x_OBSCN_pids, na.rm = TRUE)
m_nOBSCN = mean(y_OBSCN_nids, na.rm = TRUE)

plot_pOBSCN_dat <- x_OBSCN_pids[!is.na(x_OBSCN_pids)]
plot_nOBSCN_dat <- y_OBSCN_nids[!is.na(y_OBSCN_nids)]

#ANO3
ANO3_pids <- pid_ANO3[["V1"]]
ANO3_nids <- nid_ANO3[["V1"]]

finder_pANO3 <- which(clin_IDs %in% ANO3_pids)
finder_nANO3 <- which(clin_IDs %in% ANO3_nids)

x_ANO3_pids <- clindat[["Psa.most.recent.results"]][finder_pANO3]
y_ANO3_nids <- clindat[["Psa.most.recent.results"]][finder_nANO3]

#calulations
m_pANO3 = mean(x_ANO3_pids, na.rm = TRUE)
m_nANO3 = mean(y_ANO3_nids, na.rm = TRUE)

plot_pANO3_dat <- x_ANO3_pids[!is.na(x_ANO3_pids)]
plot_nANO3_dat <- y_ANO3_nids[!is.na(y_ANO3_nids)]


#CDH4
CDH4_pids <- pid_CDH4[["V1"]]
CDH4_nids <- nid_CDH4[["V1"]]

finder_pCDH4 <- which(clin_IDs %in% CDH4_pids)
finder_nCDH4 <- which(clin_IDs %in% CDH4_nids)

x_CDH4_pids <- clindat[["Psa.most.recent.results"]][finder_pCDH4]
y_CDH4_nids <- clindat[["Psa.most.recent.results"]][finder_nCDH4]

#calulations
m_pCDH4 = mean(x_CDH4_pids, na.rm = TRUE)
m_nCDH4 = mean(y_CDH4_nids, na.rm = TRUE)

plot_pCDH4_dat <- x_CDH4_pids[!is.na(x_CDH4_pids)]
plot_nCDH4_dat <- y_CDH4_nids[!is.na(y_CDH4_nids)]


#MEGF6
MEGF6_pids <- pid_MEGF6[["V1"]]
MEGF6_nids <- nid_MEGF6[["V1"]]

finder_pMEGF6 <- which(clin_IDs %in% MEGF6_pids)
finder_nMEGF6 <- which(clin_IDs %in% MEGF6_nids)

x_MEGF6_pids <- clindat[["Psa.most.recent.results"]][finder_pMEGF6]
y_MEGF6_nids <- clindat[["Psa.most.recent.results"]][finder_nMEGF6]

#calulations
m_pMEGF6 = mean(x_MEGF6_pids, na.rm = TRUE)
m_nMEGF6 = mean(y_MEGF6_nids, na.rm = TRUE)

plot_pMEGF6_dat <- x_MEGF6_pids[!is.na(x_MEGF6_pids)]
plot_nMEGF6_dat <- y_MEGF6_nids[!is.na(y_MEGF6_nids)]

#OBCSN and ANO3
OA_pids <- pid_OA[["V1"]]
OA_nids <- nid_OA[["V1"]]

finder_pOA <- which(clin_IDs %in% OA_pids)
finder_nOA <- which(clin_IDs %in% OA_nids)

x_OA_pids <- clindat[["Psa.most.recent.results"]][finder_pOA]
y_OA_nids <- clindat[["Psa.most.recent.results"]][finder_nOA]

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

x_OC_pids <- clindat[["Psa.most.recent.results"]][finder_pOC]
y_OC_nids <- clindat[["Psa.most.recent.results"]][finder_nOC]

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

x_OM_pids <- clindat[["Psa.most.recent.results"]][finder_pOM]
y_OM_nids <- clindat[["Psa.most.recent.results"]][finder_nOM]

#calulations
plot_pOM_dat <- x_OM_pids[!is.na(x_OM_pids)]
plot_nOM_dat <- y_OM_nids[!is.na(y_OM_nids)]

m_pOM = mean(plot_pOM_dat)
m_nOM = mean(plot_nOM_dat)


#Box Plot of PSA scores
pOBSCN <- data.frame(group = "+OBSCN", value = plot_pOBSCN_dat)
nOBSCN <- data.frame(group = "-OBSCN", value = plot_nOBSCN_dat)
pANO3 <- data.frame(group = "+ANO3", value = plot_pANO3_dat)
nANO3 <- data.frame(group = "-ANO3", value = plot_nANO3_dat)
pCDH4 <- data.frame(group = "+CDH4", value = plot_pCDH4_dat)
nCDH4 <- data.frame(group = "-CDH4", value = plot_nCDH4_dat)
pMEGF6 <- data.frame(group = "+MEGF6", value = plot_pMEGF6_dat)
nMEGF6 <- data.frame(group = "-MEGF6", value = plot_nMEGF6_dat)
pOA <- data.frame(group = "+OA", value = plot_pOA_dat)
nOA <- data.frame(group = "-OA", value = plot_nOA_dat)
pOC <- data.frame(group = "+OC", value = plot_pOC_dat)
nOC <- data.frame(group = "-OC", value = plot_nOC_dat)
pOM <- data.frame(group = "+OM", value = plot_pOM_dat)
nOM <- data.frame(group = "-OM", value = plot_nOM_dat)

#plot.data <- rbind(pOBSCN,nOBSCN,pANO3, nANO3,pCDH4, nCDH4, pMEGF6, nMEGF6,pOM, nOM)
#library(ggplot2)
#ggplot(plot.data, aes(x=group, y=value, fill=group)) + labs(title = "How Genes Affect PSA Levels in Patients") +labs(x = "Gene Status") + labs(y = "PSA Level") + geom_boxplot(outlier.shape = NA) + scale_y_continuous(limits = c(0, .21)) + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
#                                                                                                                                                    panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))


plot.data <- rbind(pOA, nOA,pOC, nOC,pOM, nOM)
library(ggplot2)
ggplot(plot.data, aes(x=group, y=value, fill=group)) + labs(title = "How Gene Combinations Affect PSA Levels in Patients") +labs(x = "Gene Status") + labs(y = "PSA Level") + geom_boxplot(outlier.shape = NA) + scale_y_continuous(limits = c(0, .21)) + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                                                                                                                                                                                                                                                                 panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))



#d1 <- c(plot_pOBSCN_dat,plot_nOBSCN_dat,plot_pANO3_dat,plot_nANO3_dat,plot_pCDH4_dat,plot_nCDH4_dat,plot_pMEGF6_dat,plot_nMEGF6_dat)
#d1 <- matrix(c(plot_pOBSCN_dat,plot_nOBSCN_dat,plot_pANO3_dat,plot_nANO3_dat,plot_pCDH4_dat,plot_nCDH4_dat,plot_pMEGF6_dat,plot_nMEGF6_dat),ncol=8)
#colnames(d1) <- c("+OBSCN","-OBSCN","+ANO3","-ANO3","+CDH4","-CDH4","+MEGF6","-MEGF6")
#d1 <- as.table(d1)

#hist(d1,right = FALSE,freq = TRUE,plot  = TRUE,col="cornflowerblue")

#boxplot(plot_pOBSCN_dat,use.cols = TRUE,outline = FALSE, notch = TRUE, col = "pink")

