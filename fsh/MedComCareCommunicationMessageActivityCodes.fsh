Alias: $ActivityCode = http://medcom.dk/fhir/medcom-core/CodeSystem/medcom-message-activity-codes

ValueSet: MedComCareCommunicationMessageActivityCodes
Id: medcom-care-communication-message-activity-codes
Title: "MedCom Care Communication Message Activity Codes"
Description: "ValueSet containg activity codes for care communication messages"
* $ActivityCode#new-message "A new message has been sent"
* $ActivityCode#forward-message "A message has been forwarded and potentially changed"
* $ActivityCode#reply-message "A message has been replied to"
* $ActivityCode#retract-message "A message has been retracted/cancelled"