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
* class.system 0..0
* type 0..0
* serviceType 0..0
* priority 0..0
* subject only Reference
* subject ^short = "The patient present at the encounter"
* subject ^type[0].aggregation[0] = #bundled
* episodeOfCare 1..1
* episodeOfCare only Reference
* episodeOfCare ^definition = "The encounter shall be classified as a part of a specific episode of care identifier.  This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)."
* episodeOfCare ^type[0].aggregation[0] = #bundled
* episodeOfCare.identifier 1..
* episodeOfCare.identifier only http://hl7.dk/fhir/core/StructureDefinition/lpr3-Identifier
* episodeOfCare.identifier ^short = "The identifier for danish \"forløbs-id\""
* episodeOfCare.identifier ^definition = "An identifier that represents the danish episode of care \"forløbs-is\" for the \"Landspatientregister\"."
* basedOn ..0
* basedOn ^definition = "The sevice request this encounter satisfies (e.g. incoming referral or procedure request). The basedOn element shall not be used in NotificationOfHospitalStayEncounter"
* participant ..0
* participant ^definition = "The list of people responsible for providing the service. The participant element shall not be used in NotificationOfHospitalStayEncounter"
* appointment ..0
* appointment ^definition = "The appointment that scheduled this encounter.The appointment element shall not be used in NotificationOfHospitalStayEncounter"
* period 1..
* period ^definition = "The start and end time of the encounter. For notification of hospitalization an start interval is always known as the notification of adminssion is trigged by the arrival of a patient. There a period will always exist as the notification of admission always starts the communication flow. Please that the encounter.period values always referes to the encounter start and end. The period of the leave of absence is not part of the notification of hospitalization FHIR resource ."
* period.start 1.. N
* period.start ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* period.start ^extension[1].valueCode = #4.0.0
* period.start ^definition = "Encounter Starting time.  \r\nFor the notificationOfHospitalization a starting time is the timestamp that is registered by the hospital at patient physical arrival at the ward or emergency department."
* length ..0
* length ^definition = "Quantity of time the encounter lasted. This excludes the time during leaves of absence. The length element shall not be used in NotificationOfHospitalStayEncounter"
* reasonCode ..0
* reasonCode ^definition = "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis. The resaonCode element shall not be used in NotificationOfHospitalStayEncounter"
* reasonReference ..0
* reasonReference ^definition = "References FHIR instances as Reason for the encounter. Indicates another resource whose existence justifies this Encounter. The reasonReference element shall not be used in NotificationOfHospitalStayEncounter."
* diagnosis ..0
* diagnosis ^definition = "The list of diagnosis relevant to this encounter. The dianosis element shall not be used in NotificationOfHospitalStayEncounter"
* account ^definition = "The set of accounts and issurance information that may be used for billing for this Encounter. The account element shall not be used in NotificationOfHospitalStayEncounter"
* hospitalization ..0
* hospitalization ^definition = "Details about the admission to a regional or municipalicy  healthcare service. The hospitalization element shall not be used in NotificationOfHospitalStayEncounter"
* location ..0
* location ^definition = "List of locations where  the patient has been during this encounter. The location element shall not be used in NotificationOfHospitalStayEncounter"
* serviceProvider 1..
* serviceProvider only Reference
* serviceProvider ^definition = "The organization that is primarily responsible for this Encounter's services. \r\nThis may be another organization that is defined as the MessageHeader source organization."
* serviceProvider ^type[0].aggregation[0] = #bundled
* partOf ..0
* partOf ^definition = "The Encounter references an EpisodeOfCare instance. If Encounter shall be linked then use the EpisodeOfCare instance. The partOf element shall not be used in NotificationOfHospitalStayEncounter."


Instance: example
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedComHospitalNotificationEncounter"
* extension[period].uri = "http://medcom.dk/fhir/medcom-core/StructureDefinition/status-period"
* extension[period].start = 2020-10-13T10:22:12Z
* extension[period].end = 2020-10-14T11:23:13Z
* status = $StatusCodes#arrived
* subject = Reference(EricFlame)
* episodeOfCare.identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare.identifier.value = "87654321-1234-1234-1234-123456789012" 