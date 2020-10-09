Alias: $MessageEvents = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-events

Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-care-communication-message
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource only MedComCareCommunicationMessageHeader
* entry[messageHistory].resource.activity from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-care-communication-message-activity-codes


Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
* eventCoding = $MessageEvents#care-communication-message
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)


Alias: $BundleType = http://hl7.org/fhir/bundle-type
Alias: $Use = urn:medcom:destinationuse
Alias: $ActivityCode = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-activity-codes

Instance: CareCommunicationMessageExample
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Message Example"
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/CareCommunicationMessageHeader"
* entry[messageHeader].resource = CareCommunicationMessageHeader
* entry[citizen].fullUrl = "Citizen/EricFlame"
* entry[citizen].resource = EricFlame
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


Instance: CareCommunicationMessageHeader
InstanceOf: MedComCareCommunicationMessageHeader
// Usage: #inline
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#care-communication-message
* destination.endpoint = "unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
* focus = Reference(CareCommunicationContent)
