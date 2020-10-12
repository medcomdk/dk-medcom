Profile: MedComMessageProvenance
Parent: Provenance
Id: medcom-message-provenance
Description: "Provenance information about the messages preceeding the current message"
* target 1..1 MS
* target ^definition = "Shall reference the message header being targeted."
* occurred[x] 1..
* occurredDateTime 1.. MS
* activity 1.. MS
* agent 1.. MS
* agent.who 1.. MS
* agent.who only Reference(http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-messaging-organization)
* agent.who ^definition = "Shall contain the messaging organization performing the activity. This also apply to an internal transmission to another messaging organization within a given system."
* entity 1.. MS
* entity.role MS
* entity.what MS
* entity.what.reference 0.. MS
* entity.what.reference ^definition = "Shall contain the message header id of messages given as input to the activity"