Profile: MedComCareCommunicationMessage
Parent: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-message
Id: medcom-care-communication-message
Title: "MedCom Care Communication Message"
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry[messageHeader].resource.focus 1..1 MS
* entry[messageHeader].resource.focus only Reference(MedComCareCommunication)
