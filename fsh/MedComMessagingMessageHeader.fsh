Alias: $Use = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-destinationUse

Profile: MedComMessagingMessageHeader
Parent: MessageHeader
Id: medcom-messaging-messageHeader
Description: "Message Header for MedCom message bundles"
* event[x] MS
* event[x] only Coding
* eventCoding from MedComMessagingMessageTypes
* destination.extension contains MedComMessagingDestinationUseExtension named use 1..1
* destination.extension[use] MS
* destination ^slicing.discriminator.type = #value
* destination ^slicing.discriminator.path = "$this.extension.value"
* destination ^slicing.rules = #closed
* destination contains primary 1..1 MS and cc 0.. MS
* destination[primary].extension[use].valueCoding = $Use#primary
* destination[primary].receiver only Reference(MedComMessagingOrganization)
* destination[primary].receiver 1.. MS
* destination[primary].receiver ^type.aggregation = #bundled
* destination[primary].endpoint MS
* destination[cc].extension[use].valueCoding = $Use#cc
* destination[cc].receiver only Reference(MedComMessagingOrganization)
* destination[cc].receiver 1.. MS
* destination[cc].receiver ^type.aggregation = #bundled
* destination[cc].endpoint MS
* destination[cc] ^definition = "Shall contain carbon copy recipients of the message"
* sender 1.. MS
* sender only Reference(MedComMessagingOrganization)
* source MS
* source.endpoint MS


Instance: PrimaryCoding
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-eventCodes

Instance: MessageHeaderExample
InstanceOf: MedComMessagingMessageHeader
Description: "Message Header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
