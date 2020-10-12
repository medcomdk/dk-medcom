CodeSystem: MedComMessageEventCodes
Id: medcom-message-event-codes
Title: "MedCom Message Events"
Description: "Message events for MedCom messages"
* #empty-message "Message with no content"
* #care-communication-message "Care Communication Message"
* #hospital-notification-message "Hospital Notification Message"


ValueSet: MedComMessagingMessageTypes
Id: medcom-messaging-MedComMessagingMessageTypes
Title: "MedCom Messaging Message Types"
Description: "All message types for MedCom messages"
* include codes from system MedComMessageEventCodes
