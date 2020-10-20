Profile: MedComCoreEncounter
Parent: Encounter
Id: medcom-core-encounter
Description: "An interaction between a patient/citizen and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient/citizen.  \r\nThe Encounter could be an online video consultation between a nurse and a citizen.\r\n\r\nRegional Encounter\r\nThe Encounter corresponds to the danish LPR3 \"kontakt\" term.\r\nAn Encouńter always references an EpiSodeOfCare FHIR resource. The EpisodeOfCare resource corresponds to the danish LPR3 term \"ForløbsElement\". An Encounter is not able to reference another Encounter. Typically a patient has many Encounters. The Encouters may be linked to one or more EpisodeOfCare resources.\r\n\r\nMunipalicy Encounter\r\nThe Encounter corresponds to the health services that the Munipalicy offers the citizen. For example home care.   \r\nThere are no requirements regarding how the Municipalicy implements the Encounter.   For instance a Munipalicy may have en Encounter for the HomeCare Service provided by the nurse and another Encounter for assistence with shopping. The EpisodeOfCare FHIR resource shall be used to link Encounters.   \r\n\r\nPractitioner Encounter\r\nThe Encounter corresponds to a citizen interaction with the practitioner. Each Encounter instance may correspond to a wisit \r\nThe EpisodeOfCare instance shall link the Encounters that corresonds to the danish term \"Forløb\"."
* subject 1.. 
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* account ..0
* serviceProvider only Reference(MedComCoreOrganization)
* serviceProvider ^type.aggregation = #bundled

Instance: example
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#planned 
* class = $ActCodes#AMB 
* subject = Reference(EricFlame)