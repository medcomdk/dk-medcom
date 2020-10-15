Profile: MedComMessagingResponse
Parent: MedComMessagingMessage
Id: medcom-messaging-response
Description: "Base resource for all MedCom response messages."
* entry[messageHeader].resource only MedComMessagingResponseHeader


Instance: ResponseExample
InstanceOf: MedComMessagingResponse
Description: "Example of a response message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/ResponseHeaderExample"
* entry[messageHeader].resource = ResponseHeaderExample
* entry[1].fullUrl = "Organization/MessageSender"
* entry[1].resource = MessageSender
* entry[2].fullUrl = "Organization/MessageReceiver"
* entry[2].resource = MessageReceiver
