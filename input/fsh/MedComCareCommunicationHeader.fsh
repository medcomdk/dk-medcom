Alias: $MessageEvents = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-eventCodes


Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
Description: "Message header for care communication message"
* eventCoding = $MessageEvents#care-communication-message
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)
* focus ^type.aggregation = #bundled

// CareCommunication example
Instance: CareCommunicationMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
Description: "Message header for care communication message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(CareCommunicationContent)

// CareCommunication reply example
Instance: CareCommunicationReplyMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
Description: "Message header for care communication reply message. Valid only if used in a bundle (message)."
Usage: #inline
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageSender)
* sender = Reference(MessageReceiver)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(CareCommunicationReplyContent)

// CareCommunication forward example
Instance: CareCommunicationForwardMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
Description: "Message header for care communication forward message. Valid only if used in a bundle (message)."
Usage: #inline
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageSender)
* sender = Reference(MessageReceiver)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(CareCommunicationForwardContent)
