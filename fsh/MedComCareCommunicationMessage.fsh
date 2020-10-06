Alias: $MessageCode = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-event-codes

Profile: MedComCareCommunicationMessage
Parent: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-message
Id: medcom-care-communication-message
Title: "MedCom Care Communication Message"
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource.focus 1..1 MS
* entry[messageHeader].resource.focus only Reference(MedComCareCommunication)
* entry[messageHeader].resource.eventCoding = $MessageCode#care-communication-message
* entry[messageHistory].resource.activity from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-care-communication-message-activity-codes


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
* entry[messageHeader].resource.destination.extension[use] = PrimaryCoding
* entry[messageHeader].resource.eventCoding.code = #care-communication-message
* entry[messageHeader].resource.destination.endpoint = "unknown"
* entry[messageHeader].resource.source.endpoint = "unknown"
* entry[messageHeader].resource.focus = Reference(CareCommunicationContent)
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


Instance: PrimaryCoding
InstanceOf: MedComDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Instance: CareCommunicationMessageHeader
InstanceOf: MedComMessagingMessageHeader
Usage: #inline
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding.code = #care-communication-message
* destination[primary].endpoint = "unknown"
* destination[primary].receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "unknown"
* focus = Reference(CareCommunicationContent)


Alias: $SORCode = urn:oid:1.2.208.176.1.1
Alias: $EANCode = urn:oid:1.3.88

Instance: MessageReceiver
InstanceOf: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization
* identifier[sorIdentifier].value = "543210987654321"
* identifier[eanIdentifier].value = "3210987654321"
* name = "Receiver Organization"

Instance: MessageSender
InstanceOf: http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization
* identifier[sorIdentifier].value = "123456789012345"
* identifier[eanIdentifier].value = "1234567890123"
* name = "Sender Organization"