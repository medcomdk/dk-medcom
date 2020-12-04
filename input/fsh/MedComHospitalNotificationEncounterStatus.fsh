Alias: $StatusCode = http://hl7.org/fhir/encounter-status

ValueSet: MedComHospitalNotificationEncounterStatus
Id: medcom-hospitalNotification-encounterstatus
Title: "MedCom hospital notification encounter status Codes"
Description: "ValueSet containing status codes for hospital notification encounter"
* $StatusCode#in-progress "In Progress"
* $StatusCode#onleave "On Leave"
* $StatusCode#finished "Finished"
* $StatusCode#entered-in-error "Entered in Error"
