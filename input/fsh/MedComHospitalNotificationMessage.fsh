Profile: MedComHospitalNotificationMessage
Parent: MedComMessagingMessage
Id: medcom-hospitalNotification-message
Description: "A message for a Hospital Notification. The message is triggered as patients are admitted, onleave or has finished a hospital stay in order to notify the relevant Municipalicy home care"
* entry contains
    patient 1..1
* entry[patient] 1..1 MS
* entry[patient].resource 1.. MS
* entry[patient].resource only MedComCorePatient
* entry[messageHeader].resource only MedComHospitalNotificationMessageHeader
* entry[messageHistory].resource.activity from MedComHospitalNotificationMessageActivities


Instance: MedComHospitalNotificationMessageAdmitExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Admit Example"
Description: "Example of MedCom Hospital Notification Admit"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationAdmittedMessageHeader"
* entry[messageHeader].resource = HospitalNotificationAdmittedMessageHeader
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterInProgress"
* entry[3].resource = HospitalNotificationEncounterInProgress
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitProvenance"
* entry[6].resource = HospitalNotificationAdmitProvenance

Instance: MedComHospitalNotificationMessageStartLeaveExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Start Leave Example"
Description: "Example of MedCom Hospital Notification Start Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationOnLeaveMessageHeader"
* entry[messageHeader].resource = HospitalNotificationOnLeaveMessageHeader
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterOnLeave"
* entry[3].resource = HospitalNotificationEncounterOnLeave
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitForStartLeaveProvenance"
* entry[6].resource = HospitalNotificationAdmitForStartLeaveProvenance
* entry[7].fullUrl = "Provenance/HospitalNotificationStartLeaveProvenance"
* entry[7].resource = HospitalNotificationStartLeaveProvenance

Instance: MedComHospitalNotificationMessageEndLeaveExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message End Leave Example"
Description: "Example of MedCom Hospital Notification End Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationEndLeaveMessageHeader"
* entry[messageHeader].resource = HospitalNotificationEndLeaveMessageHeader
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterInProgress"
* entry[3].resource = HospitalNotificationEncounterInProgress
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitForEndLeaveProvenance"
* entry[6].resource = HospitalNotificationAdmitForEndLeaveProvenance
* entry[7].fullUrl = "Provenance/HospitalNotificationStartLeaveForEndLeaveProvenance"
* entry[7].resource = HospitalNotificationStartLeaveForEndLeaveProvenance
* entry[8].fullUrl = "Provenance/HospitalNotificationEndLeaveProvenance"
* entry[8].resource = HospitalNotificationEndLeaveProvenance

Instance: MedComHospitalNotificationMessageDischargeExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Discharge Example"
Description: "Example of MedCom Hospital Notification Discharge"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationDischargedMessageHeader"
* entry[messageHeader].resource = HospitalNotificationDischargedMessageHeader
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterFinished"
* entry[3].resource = HospitalNotificationEncounterFinished
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitForDischargeProvenance"
* entry[6].resource = HospitalNotificationAdmitForDischargeProvenance
* entry[7].fullUrl = "Provenance/HospitalNotificationDischargeProvenance"
* entry[7].resource = HospitalNotificationDischargeProvenance


//Example of patient admittet before deceased message
Instance: MedComHospitalNotificationMessageAdmittedBeforeDeceasedExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Admitted before Deceased Example"
Description: "Example of MedCom Hospital Notification admit when patient is later deceased"
* type = $BundleType#message
* timestamp = 2021-01-10T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationAdmitDeceasedMessageHeader"
* entry[messageHeader].resource = HospitalNotificationAdmitDeceasedMessageHeader
* entry[patient].fullUrl = "Patient/5b72c625-0570-4111-b272-f0351344f8b6"
* entry[patient].resource = 5b72c625-0570-4111-b272-f0351344f8b6
* entry[2].fullUrl = "Organization/PractitionerClinic"
* entry[2].resource = PractitionerClinic
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterAdmittetBeforeDeceased"
* entry[3].resource = HospitalNotificationEncounterAdmittetBeforeDeceased
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitBeforeDeceasedProvenance"
* entry[6].resource = HospitalNotificationAdmitBeforeDeceasedProvenance



//Example of patient deceased message
Instance: MedComHospitalNotificationMessageDischargeDeceasedExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Discharge Deceased Example"
Description: "Example of MedCom Hospital Notification Discharge when patient is deceased"
* type = $BundleType#message
* timestamp = 2021-01-13T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationDischargedDeceasedMessageHeader"
* entry[messageHeader].resource = HospitalNotificationDischargedDeceasedMessageHeader
* entry[patient].fullUrl = "Patient/382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[patient].resource = 382fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[2].fullUrl = "Organization/PractitionerClinic"
* entry[2].resource = PractitionerClinic
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounterFinishedWhenDeceased"
* entry[3].resource = HospitalNotificationEncounterFinishedWhenDeceased
* entry[4].fullUrl = "Organization/MessageReceiver"
* entry[4].resource = MessageReceiver
* entry[5].fullUrl = "Organization/MessageSender"
* entry[5].resource = MessageSender
* entry[6].fullUrl = "Provenance/HospitalNotificationAdmitForDischargeDeceasedProvenance"
* entry[6].resource = HospitalNotificationAdmitForDischargeDeceasedProvenance



