Profile: MedComHospitalNotificationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-hospitalNotification-messageHeader
Description: "Message header for a hospital notification message."
* eventCoding = $MessageEvents#hospital-notification-message
* focus 1..1 MS
* focus only Reference(MedComHospitalNotificationEncounter)
* focus ^type.aggregation = #bundled


Instance: HospitalNotificationMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
* focus = Reference(HospitalNotificationEncounter)