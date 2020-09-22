Profile: MedComLpr3Encounter
Parent: Encounter
Id: medcom-lpr3-encounter
Title: "MedCom LPR3 Encounter"
Description: "Encounter which is part of an episode of care reported to the Danish National Patient Registry"
* status MS
* episodeOfCare MS
* episodeOfCare ^definition = "Shall contain the episode of care if reported to the Danish National Patient Registry"
* episodeOfCare.identifier MS
* episodeOfCare.identifier only Lpr3Identifier
* episodeOfCare.identifier ^definition = "Shall contain the id of the episode of care reported to the Danish National Patient Registry if known"