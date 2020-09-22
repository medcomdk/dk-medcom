Profile: MedComMessageProvenance
Parent: Provenance
Id: medcom-message-provenance
Title: "MedCom Message Provenance"
Description: "Provenance information about the messages preceeding the current message"
* target 1..1 MS
* target ^definition = "Shall reference the message header in the message being sent."
* occurred[x] 1..
* occurredDateTime 1.. MS
* activity 1.. MS
* activity from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-message-activity-codes
* agent 1.. MS
* agent.who 1.. MS
* agent.who only Reference(http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization)
* agent.who ^definition = "Shall contain the reciever of the previous messsage. This also apply to an internal transmission to another messaging organization within a given system."
* entity 1.. MS
* entity.role MS
* entity.what MS
* entity.what.reference 1.. MS
* entity.what.reference ^definition = "Shall contain the message header id of the received message"