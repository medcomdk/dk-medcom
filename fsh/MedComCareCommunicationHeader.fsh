Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-eventCodes

Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
* eventCoding = $MessageEvents#care-communication-message
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)


Instance: CareCommunicationMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
* focus = Reference(CareCommunicationContent)
