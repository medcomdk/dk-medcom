Profile: MedComHospitalNotificationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-hospitalNotification-messageHeader
Description: "Message header for a hospital notification message."
* eventCoding = $MessageEvents#hospital-notification-message
* destination[cc] ..0
* focus 1..1 MS
* focus only Reference(MedComHospitalNotificationEncounter)
* focus ^type.aggregation = #bundled
* extension contains MedComHospitalNotificationReportOfAdmissionExtension named reportOfAdmissionFlag ..1
* extension[reportOfAdmissionFlag] MS
* extension[reportOfAdmissionFlag] ^definition = "Shall be set to true if recipient is requested to send a report of admission"

* event[x] ^short = "The MedComMessagingMessageHeader shall contain the event value hospital-notification-message"


Instance: HospitalNotificationAdmittedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification admit message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterInProgress)
* extension[reportOfAdmissionFlag].valueBoolean = true

Instance: HospitalNotificationOnLeaveMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterOnLeave)

Instance: HospitalNotificationEndLeaveMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterInProgress)

Instance: HospitalNotificationDischargedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification discharge message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterFinished)

// admit message - for patient that will be discharged as deceased
Instance: HospitalNotificationAdmitDeceasedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification admit message when patient later is deceased. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterAdmittetBeforeDeceased)


// Discharge message - patient discharged as deceased
Instance: HospitalNotificationDischargedDeceasedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification discharge message when patient is deceased. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterFinishedWhenDeceased)


