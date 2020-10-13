Profile: MedComHospitalNotificationEncounter
Parent: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-core-encounter
Id: medcom-hospital-notification-encounter
Description: "Encounter derivation that handles hospital notification when a patient is admitted to a hospital. The hospital notification is always send from a hospital. The receiver of the message is the patients home municipalicy. The hospital notification is send for example when patient is admitted, on leave, returned from leave, finished hospital stay."
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
//Card. needs to be equal til 0..* 
* extension contains StatusPeriodExtension named spe 1..1
* extension[spe] MS
* extension[spe].value[x] N
* status 1..1
* status ^short = "arrived  | in-progress | onleave | finished | cancelled | entered-in-error"