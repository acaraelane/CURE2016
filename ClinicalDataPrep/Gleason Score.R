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

x_OBSCN_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pOBSCN]
y_OBSCN_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nOBSCN]

plot_pOBSCN_dat <- x_OBSCN_pids[!is.na(x_OBSCN_pids)]
plot_nOBSCN_dat <- y_OBSCN_nids[!is.na(y_OBSCN_nids)]


#ANO3
ANO3_pids <- pid_ANO3[["V1"]]
ANO3_nids <- nid_ANO3[["V1"]]

finder_pANO3 <- which(clin_IDs %in% ANO3_pids)
finder_nANO3 <- which(clin_IDs %in% ANO3_nids)

x_ANO3_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pANO3]
y_ANO3_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nANO3]

plot_pANO3_dat <- x_ANO3_pids[!is.na(x_ANO3_pids)]
plot_nANO3_dat <- y_ANO3_nids[!is.na(y_ANO3_nids)]


#CDH4
CDH4_pids <- pid_CDH4[["V1"]]
CDH4_nids <- nid_CDH4[["V1"]]

finder_pCDH4 <- which(clin_IDs %in% CDH4_pids)
finder_nCDH4 <- which(clin_IDs %in% CDH4_nids)

x_CDH4_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pCDH4]
y_CDH4_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nCDH4]

plot_pCDH4_dat <- x_CDH4_pids[!is.na(x_CDH4_pids)]
plot_nCDH4_dat <- y_CDH4_nids[!is.na(y_CDH4_nids)]


#MEGF6
MEGF6_pids <- pid_MEGF6[["V1"]]
MEGF6_nids <- nid_MEGF6[["V1"]]

finder_pMEGF6 <- which(clin_IDs %in% MEGF6_pids)
finder_nMEGF6 <- which(clin_IDs %in% MEGF6_nids)

x_MEGF6_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pMEGF6]
y_MEGF6_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nMEGF6]

plot_pMEGF6_dat <- x_MEGF6_pids[!is.na(x_MEGF6_pids)]
plot_nMEGF6_dat <- y_MEGF6_nids[!is.na(y_MEGF6_nids)]

#OBCSN and ANO3
OA_pids <- pid_OA[["V1"]]
OA_nids <- nid_OA[["V1"]]

finder_pOA <- which(clin_IDs %in% OA_pids)
finder_nOA <- which(clin_IDs %in% OA_nids)

x_OA_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pOA]
y_OA_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nOA]

#calulations
plot_pOA_dat <- x_OA_pids[!is.na(x_OA_pids)]
plot_nOA_dat <- y_OA_nids[!is.na(y_OA_nids)]

#OBCSN and CDH4
OC_pids <- pid_OC[["V1"]]
OC_nids <- nid_OC[["V1"]]

finder_pOC <- which(clin_IDs %in% OC_pids)
finder_nOC <- which(clin_IDs %in% OC_nids)

x_OC_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pOC]
y_OC_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nOC]

#calulations
plot_pOC_dat <- x_OC_pids[!is.na(x_OC_pids)]
plot_nOC_dat <- y_OC_nids[!is.na(y_OC_nids)]


#OBCSN and MEGF6
OM_pids <- pid_OM[["V1"]]
OM_nids <- nid_OM[["V1"]]

finder_pOM <- which(clin_IDs %in% OM_pids)
finder_nOM <- which(clin_IDs %in% OM_nids)

x_OM_pids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_pOM]
y_OM_nids <- clindat[["Radical.Prostatectomy.Gleason.Score.for.Prostate.Cancer"]][finder_nOM]

#calulations
plot_pOM_dat <- x_OM_pids[!is.na(x_OM_pids)]
plot_nOM_dat <- y_OM_nids[!is.na(y_OM_nids)]


#Histogram of Gleason Scores
#hist(plot_pOBSCN_dat,breaks=seq(5.55, 10.55, 0.2),right = FALSE,freq = TRUE,plot  = TRUE,col="cornflowerblue")

hist(plot_pOBSCN_dat,breaks=rep(6:10,each=2)+c(-.4,.4),right = FALSE,freq = TRUE,plot  = TRUE,col="cornflowerblue")


#BoxPlots of Gleason Scores
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
pOM <- data.frame(group = "+OM", value = plot_pOC_dat)
nOM <- data.frame(group = "-OM", value = plot_nOC_dat)
#plot.data <- rbind(pOBSCN,nOBSCN,pANO3, nANO3,pCDH4, nCDH4, pMEGF6, nMEGF6,pOM, nOM)
#library(ggplot2)
#ggplot(plot.data, aes(x=group, y=value, fill=group)) + labs(title = "How Genes Affect Gleason Scores for Patients") +labs(x = "Gene Status") + labs(y = "Gleason Score") + geom_boxplot(outlier.shape = NA) + scale_y_continuous(limits = c(6, 10)) + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
#                                                                                                                                                      panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))


plot.data <- rbind(pOA, nOA,pOC, nOC,pOM, nOM)
library(ggplot2)
ggplot(plot.data, aes(x=group, y=value, fill=group)) + labs(title = "How Gene Combinations Affect Gleason Scores in Patients") +labs(x = "Gene Status") + labs(y = "Gleason Score") + geom_boxplot(outlier.shape = NA) + scale_y_continuous(limits = c(6, 10)) + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                                                                                                                                                                                                                                                                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

