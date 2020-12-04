Profile: MedComHospitalNotificationEncounter
Parent: MedComCoreLpr3Encounter
Id: medcom-hospitalNotification-encounter
Description: "Encounter derivation that handles hospital notification when a patient is admitted to a hospital. The hospital notification is always send from a hospital. The receiver of the message is the patients home municipalicy. The hospital notification is send for example when patient is admitted, on leave, returned from leave, finished hospital stay."
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
* status from MedComHospitalNotificationEncounterStatus
* status 1..1
* status ^short = "in-progress | onleave | finished | entered-in-error"
* class ^short = "inpatient | emergency"
* class from MedComHospitalNotificationEncounterClass
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare[lpr3identifier].reference ..0
* episodeOfCare.reference ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1.. MS
* period ^definition = "The start and end time of the encounter. For notification of hospitalization an start interval is always known as the notification of adminssion is trigged by the arrival of a patient. There a period will always exist as the notification of admission always starts the communication flow. Please that the encounter.period values always referes to the encounter start and end. The period of the leave of absence is not part of the notification of hospitalization FHIR resource ."
* period.start 1.. MS
* period.start ^definition = "Encounter Starting time.  \r\nFor the notificationOfHospitalization a starting time is the timestamp that is registered by the hospital at patient physical arrival at the ward or emergency department."
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ^definition = "The set of accounts and issurance information that may be used for billing for this Encounter. The account element shall not be used in NotificationOfHospitalStayEncounter"
* hospitalization ..0
* location ..0
* serviceProvider 1.. MS
* partOf ..0

Instance: HospitalNotificationEncounter
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter"
Description: "Exampel of MedCom hospital Noticication Encounter 
with  Burncenter as serviceProvider"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(EricFlame)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-13T12:22:12Z
* serviceProvider = Reference(BurnCenter)