CodeSystem: MedComMessageEventCodes
Id: medcom-messaging-eventCodes
Title: "MedCom Message Events"
Description: "Message events for MedCom messages"
* #empty-message "Message with no content"
* #care-communication-message "Care Communication Message"
* #hospital-notification-message "Hospital Notification Message"


ValueSet: MedComMessagingMessageTypes
Id: medcom-messaging-messageTypes
Title: "MedCom Messaging Message Types"
Description: "All message types for MedCom messages"
* include codes from system MedComMessageEventCodes
