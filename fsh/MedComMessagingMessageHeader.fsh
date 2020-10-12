Alias: $Use = urn:medcom:destinationuse

Profile: MedComMessagingMessageHeader
Parent: MessageHeader
Id: medcom-messaging-messageHeader
Title: "MedCom Messaging Message Header"
Description: "Message Header for MedCom message bundles"
* event[x] MS
* event[x] only Coding
* eventCoding from MedComMessagingMessageTypes
* destination.extension contains MedComDestinationUseExtension named use 1..1
* destination.extension[use] MS
* destination ^slicing.discriminator.type = #value
* destination ^slicing.discriminator.path = "$this.extension.value"
* destination ^slicing.rules = #closed
* destination contains primary 1..1 MS and cc 0.. MS
* destination[primary].extension[use].valueCoding = $Use#primary
* destination[primary].receiver only Reference(MedComMessagingOrganization)
* destination[primary].receiver 1.. MS
* destination[primary].endpoint MS
* destination[cc].extension[use].valueCoding = $Use#cc
* destination[cc].receiver only Reference(MedComMessagingOrganization)
* destination[cc].receiver 1.. MS
* destination[cc].endpoint MS
* destination[cc] ^definition = "Shall contain carbon copy recipients of the message"
* sender 1.. MS
* sender only Reference(MedComMessagingOrganization)
* source MS
* source.endpoint MS


Instance: PrimaryCoding
InstanceOf: MedComDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-event-codes

Instance: MessageHeaderExample
InstanceOf: MedComMessagingMessageHeader
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
