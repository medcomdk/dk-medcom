Profile: MedComMessagingProvenance
Parent: Provenance
Id: medcom-messaging-provenance
Description: "Provenance information about the messages preceeding the current message"
* target 1..1 MS
* target ^definition = "Shall reference the message header being targeted."
* target ^type.aggregation = #bundled
* occurred[x] 1..
* occurredDateTime 1.. MS
* occurredDateTime ^short = "Date and Time the message was send"
* recorded MS
* activity 1.. MS
* activity ^definition = "Activity that occurred and triggered the current or a previous message"
* activity.coding.system 1.. MS
* activity.coding.system = "http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes"
* agent 1.. MS
* agent.who 1.. MS
* agent.who only Reference(MedComMessagingOrganization)
* agent.who ^definition = "Shall contain the messaging organization performing the activity. This also apply to an internal transmission to another messaging organization within a given system."
* agent.who ^type.aggregation = #bundled
* entity MS
* entity.role MS
* entity.what MS
* entity.what.reference 1.. MS
* entity.what.reference ^definition = "Shall contain the message header id of messages given as input to the activity"
* entity.what.reference ^short = "Reference a previous message. If previous message is EDIFACT or OIOXML it shall be expressed as [lokationsnummer]#[brevid] from the EDIFACT or OIOXML message. If previous message is a FHIR message: Messageheader.id from previous message. If no previous message = NA"



Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes

// CareCommunication example


Instance: NewCareCommunicationProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
* target = Reference(CareCommunicationMessageHeader)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(MessageSender)

// CareCommunication reply example

Instance: NewCareCommunicationProvenanceForReply
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(CareCommunicationReplyMessageHeader)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(MessageSender)

Instance: ReplyCareCommunicationProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(CareCommunicationReplyMessageHeader)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(MessageReceiver)

// CareCommunication forward example

Instance: NewCareCommunicationProvenanceForForward
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(CareCommunicationForwardMessageHeader)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(MessageSender)

Instance: ForwardCareCommunicationProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(CareCommunicationForwardMessageHeader)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(MessageReceiver)

// Admit example

Instance: HospitalNotificationAdmitProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
* target = Reference(HospitalNotificationAdmittedMessageHeader)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)

// Start leave example

Instance: HospitalNotificationAdmitForStartLeaveProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationOnLeaveMessageHeader)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)

Instance: HospitalNotificationStartLeaveProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
* target = Reference(HospitalNotificationOnLeaveMessageHeader)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#start-leave-inpatient
* agent.who = Reference(MessageSender)
* entity.role = #derivation
* entity.what = Reference(HospitalNotificationAdmittedMessageHeader)

// End leave example

Instance: HospitalNotificationEndLeaveProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
* target = Reference(HospitalNotificationEndLeaveMessageHeader)
* occurredDateTime = 2020-10-25T09:12:34Z
* recorded = 2020-10-25T09:12:34Z
* activity = $ActivityCode#end-leave-inpatient
* agent.who = Reference(MessageSender)
* entity.role = #derivation
* entity.what = Reference(HospitalNotificationOnLeaveMessageHeader)

Instance: HospitalNotificationStartLeaveForEndLeaveProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
* target = Reference(HospitalNotificationEndLeaveMessageHeader)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#start-leave-inpatient
* agent.who = Reference(MessageSender)
* entity.role = #derivation
* entity.what = Reference(HospitalNotificationAdmittedMessageHeader)

Instance: HospitalNotificationAdmitForEndLeaveProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationEndLeaveMessageHeader)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)

// Discharge example

Instance: HospitalNotificationAdmitForDischargeProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationDischargedMessageHeader)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)

Instance: HospitalNotificationDischargeProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationDischargedMessageHeader)
* occurredDateTime = 2020-10-28T09:21:26Z
* recorded = 2020-10-28T09:21:26Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)
* entity.role = #derivation
* entity.what = Reference(HospitalNotificationAdmittedMessageHeader)


//patient is admitted before deceased
Instance: HospitalNotificationAdmitBeforeDeceasedProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationAdmitDeceasedMessageHeader)
* occurredDateTime = 2021-01-10T13:44:14Z
* recorded = 2021-01-10T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(MessageSender)

//patient is deceased
Instance: HospitalNotificationAdmitForDischargeDeceasedProvenance
InstanceOf: MedComMessagingProvenance
Description: "Provenance information for a medcom Hospital Notification message when patient deceased. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference(HospitalNotificationDischargedDeceasedMessageHeader)
* occurredDateTime = 2021-01-13T13:44:14Z
* recorded = 2021-01-13T13:45:15Z
* activity = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(MessageSender)

