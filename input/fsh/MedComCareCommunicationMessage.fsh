Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource only MedComCareCommunicationMessageHeader
* entry[messageHistory].resource.activity from MedComCareCommunicationMessageActivities


Alias: $BundleType = http://hl7.org/fhir/bundle-type
Alias: $ActivityCode = http://medcom.dk/fhir/core/CodeSystem/medcom-messaging-activityCodes

Instance: CareCommunicationMessageExample
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Message Example"
Description: "Example of a care communication message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/CareCommunicationMessageHeader"
* entry[messageHeader].resource = CareCommunicationMessageHeader
* entry[citizen].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[citizen].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Communication/CareCommunicationContent"
* entry[3].resource = CareCommunicationContent
* entry[4].fullUrl = "Encounter/EncounterWithLPR3Identifier"
* entry[4].resource = EncounterWithLPR3Identifier
* entry[5].fullUrl = "Practitioner/MichaelBurns"
* entry[5].resource = MichaelBurns
* entry[6].fullUrl = "Organization/MessageReceiver"
* entry[6].resource = MessageReceiver
* entry[7].fullUrl = "Organization/MessageSender"
* entry[7].resource = MessageSender
* entry[8].fullUrl = "Provenance/NewCareCommunicationProvenance"
* entry[8].resource = NewCareCommunicationProvenance

Instance: CareCommunicationMessageReplyExample
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Reply Message Example"
Description: "Example of a reply to a care communication message."
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[messageHeader].fullUrl = "MessageHeader/CareCommunicationReplyMessageHeader"
* entry[messageHeader].resource = CareCommunicationReplyMessageHeader
* entry[citizen].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[citizen].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/BurnCenter"
* entry[2].resource = BurnCenter
* entry[3].fullUrl = "Communication/CareCommunicationReplyContent"
* entry[3].resource = CareCommunicationReplyContent
* entry[4].fullUrl = "Encounter/EncounterWithLPR3Identifier"
* entry[4].resource = EncounterWithLPR3Identifier
* entry[5].fullUrl = "Practitioner/MichaelBurns"
* entry[5].resource = MichaelBurns
* entry[6].fullUrl = "Practitioner/EmmaWaters"
* entry[6].resource = EmmaWaters
* entry[7].fullUrl = "Organization/MessageReceiver"
* entry[7].resource = MessageReceiver
* entry[8].fullUrl = "Organization/MessageSender"
* entry[8].resource = MessageSender
* entry[9].fullUrl = "Provenance/NewCareCommunicationProvenanceForReply"
* entry[9].resource = NewCareCommunicationProvenanceForReply
* entry[10].fullUrl = "Provenance/ReplyCareCommunicationProvenance"
* entry[10].resource = ReplyCareCommunicationProvenance
