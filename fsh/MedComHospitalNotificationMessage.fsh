Profile: MedComHospitalNotificationMessage
Parent: MedComMessagingMessage
Id: medcom-hospitalNotification-message
Description: "A message for a Hospital Notification. The message is triggered as patients are admitted, onleave or has finished a hospital stay in order to notify the relevant Municipalicy home care"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource only MedComHospitalNotificationMessageHeader
* entry[messageHistory].resource.activity from MedComHospitalNotificationMessageActivities


Instance: MedComHospitalNotificationMessageExample
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Example"
Description: "Exampel of MedCom Care Communication 
with Erik Flame, Burncenter,EncounterWithLPR3Identifier,
MichaelBurns"
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/HospitalNotificationMessageHeader"
* entry[messageHeader].resource = HospitalNotificationMessageHeader
* entry[citizen].fullUrl = "Patient/EricFlame"
* entry[citizen].resource = EricFlame
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Encounter/HospitalNotificationEncounter"
* entry[3].resource = HospitalNotificationEncounter
* entry[4].fullUrl = "Practitioner/MichaelBurns"
* entry[4].resource = MichaelBurns
* entry[5].fullUrl = "Organization/MessageReceiver"
* entry[5].resource = MessageReceiver
* entry[6].fullUrl = "Organization/MessageSender"
* entry[6].resource = MessageSender
/* entry[8].fullUrl = "Provenance/NewCareCommunicationProvenance"
* entry[8].resource = NewCareCommunicationProvenance*/