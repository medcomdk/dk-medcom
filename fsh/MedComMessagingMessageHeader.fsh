Alias: $Use = urn:medcom:destinationuse

Profile: MedComMessagingMessageHeader
Parent: MessageHeader
Id: medcom-messaging-messageHeader
Title: "MedCom Messaging Message Header"
Description: "Message Header for MedCom message bundles"
* event[x] MS
* event[x] only Coding
* destination.extension contains MedComDestinationUseExtension named use 0..1
* destination ^slicing.discriminator.type = #value
* destination ^slicing.discriminator.path = "extension:use.valueCoding"
* destination ^slicing.rules = #closed
* destination contains primary 0..1 and cc 0..
* destination[primary].extension[use].valueCoding = $Use#primary
* destination.receiver only Reference(http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization)
* sender only Reference(http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization)