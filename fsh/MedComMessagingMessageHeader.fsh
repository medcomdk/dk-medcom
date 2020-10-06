Alias: $Use = urn:medcom:destinationuse

Profile: MedComMessagingMessageHeader
Parent: MessageHeader
Id: medcom-messaging-messageHeader
Title: "MedCom Messaging Message Header"
Description: "Message Header for MedCom message bundles"
* event[x] MS
* event[x] only Coding
* destination.extension contains MedComDestinationUseExtension named use 0..1
* destination.extension[use] MS
* destination ^slicing.discriminator.type = #value
* destination ^slicing.discriminator.path = "extension:use.valueCoding"
* destination ^slicing.rules = #closed
* destination contains primary 0..1 MS and cc 0.. MS
* destination.receiver 1.. MS
* destination[primary] MS
* destination[primary].extension[use].valueCoding = $Use#primary
* destination[primary].receiver 1.. MS
* destination.receiver only Reference(MedComMessagingOrganization)
* sender 1.. MS
* sender only Reference(MedComMessagingOrganization)
* source MS
* source.endpoint MS