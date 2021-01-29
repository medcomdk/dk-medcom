Profile: MedComMessagingAcknowledgement
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* entry[messageHeader].resource only MedComMessagingAcknowledgementHeader


Instance: 04ed814c-ccf6-47aa-be73-ae38df23c66a
InstanceOf: MedComMessagingAcknowledgement
Title: "Acknowledgement message"
Description: "Example of a Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/ff9055ec-b1f1-48b6-933a-063dff0a6faf"
* entry[messageHeader].resource = ff9055ec-b1f1-48b6-933a-063dff0a6faf
* entry[1].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[1].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[2].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[2].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

Instance: 2c9535ef-ed94-4060-a928-7baddec7ee71
InstanceOf: MedComMessagingAcknowledgement
Title: "fatal-error Acknowledgement message"
Description: "Example of a fatal-error Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/4879c81e-0607-4ccb-b358-24a72208e30d"
* entry[messageHeader].resource = 4879c81e-0607-4ccb-b358-24a72208e30d
* entry[1].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[1].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[2].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[2].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[3].fullUrl = "MedComMessagingAcknowledgementHeader/4ecb2a8e-3a68-4083-910e-811296affd43"
* entry[3].resource = 4ecb2a8e-3a68-4083-910e-811296affd43

Instance: eada5e7a-a7ef-43b1-bfd6-024d5e64294c
InstanceOf: MedComMessagingAcknowledgement
Title: "ok Acknowledgement message"
Description: "Example of a ok Acknowledgement message."
* type = $BundleType#message
* timestamp = 2021-01-01T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/4aa2d9bf-2c6c-47e8-bce4-7928bcd51019"
* entry[messageHeader].resource = 4aa2d9bf-2c6c-47e8-bce4-7928bcd51019
* entry[1].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[1].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[2].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[2].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[3].fullUrl = "MedComMessagingAcknowledgementHeader/4ecb2a8e-3a68-4083-910e-811296affd43"
* entry[3].resource = e87bc9d4-f876-4b6f-8585-40b26dc1e369

