Profile: MedComMessagingResponse
Parent: MedComMessagingMessage
Id: medcom-messaging-response
Description: "Base resource for all MedCom response messages."
* entry[messageHeader].resource only MedComMessagingResponseHeader


Instance: ResponseExample
InstanceOf: MedComMessagingResponse
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/ResponseHeaderExample"
* entry[messageHeader].resource = ResponseHeaderExample
