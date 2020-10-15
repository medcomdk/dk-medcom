Profile: MedComMessageProvenance
Parent: Provenance
Id: medcom-messaging-provenance
Description: "Provenance information about the messages preceeding the current message"
* target 1..1 MS
* target ^definition = "Shall reference the message header being targeted."
* target ^type.aggregation = #bundled
* occurred[x] 1..
* occurredDateTime 1.. MS
* recorded MS
* activity 1.. MS
* activity.coding.system = "http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-activityCodes"
* agent 1.. MS
* agent.who 1.. MS
* agent.who only Reference(MedComMessagingOrganization)
* agent.who ^definition = "Shall contain the messaging organization performing the activity. This also apply to an internal transmission to another messaging organization within a given system."
* agent.who ^type.aggregation = #bundled
* entity MS
* entity.role MS
* entity.what MS
* entity.what.reference 0.. MS
* entity.what.reference ^definition = "Shall contain the message header id of messages given as input to the activity"


Alias: $ActivityCode = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-messaging-activityCodes

Instance: NewCareCommunicationProvenance
InstanceOf: MedComMessageProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
* target = Reference(CareCommunicationMessageHeader)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(MessageSender)