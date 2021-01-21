Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes

ValueSet: MedComCareCommunicationMessageActivities
Id: medcom-careCommunication-messagingActivities
Title: "MedCom Care Communication Message Activity Codes"
Description: "ValueSet containg activity codes for care communication messages"
* $ActivityCode#new-message "A new message has been sent"
* $ActivityCode#forward-message "A message has been forwarded and potentially changed"
* $ActivityCode#reply-message "A message has been replied to"
* $ActivityCode#retract-message "A message has been retracted/cancelled"