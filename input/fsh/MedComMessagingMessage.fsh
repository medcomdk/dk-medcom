Profile: MedComMessagingMessage
Parent: Bundle
Id: medcom-messaging-message
Description: "Base resource for all MedCom messages."
* type MS
* type = #message
* type ^short = "Always message"
* timestamp 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains messageHeader 1..1 MS and messageHistory 0.. MS 
* entry.resource 1.. MS
* entry[messageHeader].resource only MedComMessagingMessageHeader
* entry[messageHistory].resource only MedComMessagingProvenance


Alias: $BundleType = http://hl7.org/fhir/bundle-type

Instance: eb26be85-fdb7-454d-a980-95cba6d1745b
InstanceOf: MedComMessagingMessage
Description: "Example of an emty message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/3881874e-2042-4a00-aee8-23512799f512"
* entry[messageHeader].resource = 3881874e-2042-4a00-aee8-23512799f512
* entry[1].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[1].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[2].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[2].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
