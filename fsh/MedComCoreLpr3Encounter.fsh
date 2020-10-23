Profile: MedComCoreLpr3Encounter
Parent: MedComCoreEncounter
Id: medcom-core-lpr3Encounter
Description: "Encounter which is part of an episode of care reported to the Danish National Patient Registry"
* status MS
* class MS
* episodeOfCare MS
* episodeOfCare ^slicing.discriminator.type = #value
* episodeOfCare ^slicing.discriminator.path = "identifier.system"
* episodeOfCare ^slicing.rules = #open
* episodeOfCare contains lpr3identifier 1..1 MS
* episodeOfCare[lpr3identifier] ^definition = "Shall contain the episode of care if reported to the Danish National Patient Registry"
* episodeOfCare[lpr3identifier].identifier 1..1 MS
* episodeOfCare[lpr3identifier].identifier only Lpr3Identifier
* episodeOfCare[lpr3identifier].identifier ^definition = "Shall contain the id of the episode of care reported to the Danish National Patient Registry if known"

Alias: $StatusCodes = http://hl7.org/fhir/encounter-status
Alias: $LPR = https://www.esundhed.dk/Registre/Landspatientsregisteret
Alias: $ActCodes = http://terminology.hl7.org/CodeSystem/v3-ActCode

Instance: EncounterWithLPR3Identifier
InstanceOf: MedComCoreLpr3Encounter
Title: "Encounter with LPR3 identifier"
Description: "Encounter with a LPR3 identifier. Valid only if used in a bundle (message)."
* status = $StatusCodes#unknown
* class = $ActCodes#AMB
* subject = Reference(EricFlame)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "12345678-1234-1234-1234-123456789012" 
