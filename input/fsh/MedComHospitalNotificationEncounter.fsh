Profile: MedComHospitalNotificationEncounter
Parent: MedComCoreEncounter
Id: medcom-hospitalNotification-encounter
Description: "Encounter derivation that handles hospital notification when a patient is admitted to a hospital. The hospital notification is always send from a hospital. The receiver of the message is the patients home municipalicy. The hospital notification is send for example when patient is admitted, on leave, returned from leave, finished hospital stay."
* status MS
* status from MedComHospitalNotificationEncounterStatus
* status 1..1
* status ^short = "in-progress | onleave | finished | entered-in-error"
* class MS
* class ^short = "inpatient | emergency"
* class from MedComHospitalNotificationEncounterClass
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare 1.. MS
* episodeOfCare.identifier 1.. MS
* episodeOfCare ^definition = "Shall contain an episode of care identifier for the entire hospitalization"
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


Instance: HospitalNotificationEncounterInProgress
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter in progress"
Description: "Example of MedCom Hospital Noticication inpatient Encounter in progress with Burncenter as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(EricFlame)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(BurnCenter)

Instance: HospitalNotificationEncounterOnLeave
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter on leave"
Description: "Example of MedCom Hospital Noticication inpatient Encounter on leave with Burncenter as serviceProvider"
* identifier.value = "1234567890"
* status = #onleave
* class = $ActCodes#IMP 
* subject = Reference(EricFlame)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(BurnCenter)

Instance: HospitalNotificationEncounterFinished
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter in progress"
Description: "Example of MedCom Hospital Noticication inpatient Encounter in progress with Burncenter as serviceProvider"
* identifier.value = "1234567890"
* status = #finished
* class = $ActCodes#IMP 
* subject = Reference(EricFlame)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(BurnCenter)
