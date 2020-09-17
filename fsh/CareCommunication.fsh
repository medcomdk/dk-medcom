Profile:        CareCommunication
Parent:         Communication
Id:             medcom-care-communication
Title:          "Care Communication"
Description:    "Care related communication between two or more parties in Danish healthcare"
* category 1..1 MS
* subject 1.. MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* topic MS
* encounter 1.. MS
* sent 1.. MS
* recipient 0.. MS
* recipient only Reference(Organization or PractitionerRole)
* recipient ^type.aggregation = #bundled
* sender 0.. MS
* sender only Reference(Organization or PractitionerRole)
* sender ^type.aggregation = #bundled
* payload 1.. MS
* payload ^slicing.discriminator.type = #type
* payload ^slicing.discriminator.path = "$this"
* payload ^slicing.rules = #open
* payload ^slicing.ordered = true
* payload contains
    string 1..1 and
    Attachment 0..1
* payload[string].extension contains medcom-core-date-time-extension named date 1..1 MS
* payload[string].extension contains medcom-core-author-extension named author 1..1 MS