Extension: MedComMessagingDestinationUseExtension
Id: medcom-messaging-destinationUseExtension
Title: "MedCom Destination Use Extension"
Description: "Indicates whether the use of a destination in a MedCom message header is as a primary or a carbon copy recipient of the message"
* value[x] 1..1
* value[x] only Coding
* valueCoding.system = "http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-destinationUse"
