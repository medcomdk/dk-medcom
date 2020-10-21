Profile: MedComMessagingAcknowledgement
Parent: MedComMessagingMessage
Id: medcom-messaging-Acknowledgement
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
