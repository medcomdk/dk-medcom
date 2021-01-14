Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-eventCodes

Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
Description: "Message header for care communication message"
* eventCoding = $MessageEvents#care-communication-message
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)
* focus ^type.aggregation = #bundled


Instance: CareCommunicationMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
Description: "Message header for care communication message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(CareCommunicationContent)