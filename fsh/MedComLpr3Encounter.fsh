Profile: MedComLpr3Encounter
Parent: MedComCoreEncounter
Id: medcom-lpr3-encounter
Description: "Encounter which is part of an episode of care reported to the Danish National Patient Registry"
* status MS
* episodeOfCare MS
* episodeOfCare ^definition = "Shall contain the episode of care if reported to the Danish National Patient Registry"
* episodeOfCare.identifier MS
* episodeOfCare.identifier only Lpr3Identifier
* episodeOfCare.identifier ^definition = "Shall contain the id of the episode of care reported to the Danish National Patient Registry if known"

Alias: $StatusCodes = http://hl7.org/fhir/encounter-status
Alias: $LPR = https://www.esundhed.dk/Registre/Landspatientsregisteret
Alias: $ActCodes = http://terminology.hl7.org/CodeSystem/v3-ActCode

Instance: EncounterWithLPR3Identifier
InstanceOf: MedComLpr3Encounter
Title: "Encounter with LPR3 identifier"
* status = $StatusCodes#unknown
* class = $ActCodes#AMB
* subject = Reference(EricFlame)
* episodeOfCare.identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare.identifier.value = "12345678-1234-1234-1234-123456789012" 
