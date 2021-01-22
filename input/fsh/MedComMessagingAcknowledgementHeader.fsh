Profile: MedComMessagingAcknowledgementHeader
Parent: MedComMessagingMessageHeader
Id: medcom-messaging-acknowledgementHeader
Description: "A resource that describes a reponse to a message that is exchanged as a MedCom messgage within danish healthcare"
* destination[cc] ..0
* response 1.. MS
* response.identifier MS
* response.code MS
* response.details MS
* response.details ^definition = "Shall contain identified hints/warnings/error in case the code is transient-error or fatal-error"



Alias: $MessageEvents = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-eventCodes
Alias: $AcknowledgementCode = http://hl7.org/fhir/ValueSet/Acknowledgement-code

Instance: AcknowledgementHeaderExample
InstanceOf: MedComMessagingAcknowledgementHeader
Description: "Message header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* response.identifier = "EmptyMessage"
* response.code = $AcknowledgementCode#ok

Instance: AcknowledgementHeaderExample-fatal-error
InstanceOf: MedComMessagingAcknowledgementHeader
Description: "Message header for an fatal-error message"
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "MedComHospitalNotificationMessageStartLeaveExample"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(OperationOutcome-error)

Instance: AcknowledgementHeaderExample-ok
InstanceOf: MedComMessagingAcknowledgementHeader
Description: "Message header for an ok message"
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(OperationOutcome-error)

Alias: $ServerityCode = http://hl7.org/fhir/ValueSet/issue-severity
Alias: $CodeCode = http://hl7.org/fhir/ValueSet/issue-type

Instance: OperationOutcome-error
InstanceOf: OperationOutcome
Description: "Example of a error operationOutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Error parsing resource XML"
* issue.expression = "Bundle.meta"

Instance: OperationOutcome-ok
InstanceOf: OperationOutcome
Description: "Example of a ok operationOutcome"
* issue.severity = $ServerityCode#information
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Invalid messages from your system 0%"

