Profile: MedComMessagingAcknowledgement
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* entry[messageHeader].resource only MedComMessagingAcknowledgementHeader


Instance: AcknowledgementExample
InstanceOf: MedComMessagingAcknowledgement
Description: "Example of a Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/AcknowledgementHeaderExample"
* entry[messageHeader].resource = AcknowledgementHeaderExample
* entry[1].fullUrl = "Organization/MessageSender"
* entry[1].resource = MessageSender
* entry[2].fullUrl = "Organization/MessageReceiver"
* entry[2].resource = MessageReceiver

Instance: AcknowledgementExample-fatal-error
InstanceOf: MedComMessagingAcknowledgement
Description: "Example of a fatal-error Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/AcknowledgementHeaderExample-fatal-error"
* entry[messageHeader].resource = AcknowledgementHeaderExample-fatal-error
* entry[1].fullUrl = "Organization/MessageSender"
* entry[1].resource = MessageSender
* entry[2].fullUrl = "Organization/MessageReceiver"
* entry[2].resource = MessageReceiver
* entry[3].fullUrl = "MedComMessagingAcknowledgementHeader/OperationOutcome-error"
* entry[3].resource = OperationOutcome-error

Instance: AcknowledgementExample-ok
InstanceOf: MedComMessagingAcknowledgement
Description: "Example of a ok Acknowledgement message."
* type = $BundleType#message
* timestamp = 2021-01-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/AcknowledgementHeaderExample-ok"
* entry[messageHeader].resource = AcknowledgementHeaderExample-ok
* entry[1].fullUrl = "Organization/MessageSender"
* entry[1].resource = MessageSender
* entry[2].fullUrl = "Organization/MessageReceiver"
* entry[2].resource = MessageReceiver
* entry[3].fullUrl = "MedComMessagingAcknowledgementHeader/OperationOutcome-error"
* entry[3].resource = OperationOutcome-ok

