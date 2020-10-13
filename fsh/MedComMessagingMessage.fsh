Profile: MedComMessagingMessage
Parent: Bundle
Id: medcom-messaging-message
Description: "Base resource for all MedCom messages."
* type MS
* type = #message
* timestamp 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains messageHeader 1..1 MS and messageHistory 0.. MS 
* entry.resource 1.. MS
* entry[messageHeader].resource only MedComMessagingMessageHeader
* entry[messageHistory].resource only MedComMessagingProvenance


Alias: $BundleType = http://hl7.org/fhir/bundle-type

Instance: EmptyMessage
InstanceOf: MedComMessagingMessage
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/MessageHeaderExample"
* entry[messageHeader].resource = MessageHeaderExample
