Alias: $MessageCode = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-event-codes

Profile: MedComCareCommunicationMessage
Parent: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-message
Id: medcom-care-communication-message
Title: "MedCom Care Communication Message"
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource.focus 1..1 MS
* entry[messageHeader].resource.focus only Reference(MedComCareCommunication)
* entry[messageHeader].resource.eventCoding = $MessageCode#care-communication-message
* entry[messageHistory].resource.activity from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-care-communication-message-activity-codes