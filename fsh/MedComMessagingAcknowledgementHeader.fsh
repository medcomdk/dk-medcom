Profile: MedComMessagingAcknowledgementHeader
Parent: MedComMessagingMessageHeader
Id: medcom-messaging-AcknowledgementHeader
Description: "A resource that describes a reponse to a message that is exchanged as a MedCom messgage within danish healthcare"
* destination[cc] ..0
* response 1.. MS
* response.identifier MS
* response.code MS
* response.details MS
* response.details ^definition = "Shall contain identified hints/warnings/error in case the code is transient-error or fatal-error"


Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-eventCodes
Alias: $AcknowledgementCode = http://hl7.org/fhir/ValueSet/Acknowledgement-code

Instance: AcknowledgementHeaderExample
InstanceOf: MedComMessagingAcknowledgementHeader
Description: "Message header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
* response.identifier = "EmptyMessage"
* response.code = $AcknowledgementCode#ok
