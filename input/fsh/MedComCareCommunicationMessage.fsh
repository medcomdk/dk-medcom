Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry contains
    citizen 1..1
* entry[citizen] 1..1 MS
* entry[citizen].resource 1.. MS
* entry[citizen].resource only MedComCorePatient
* entry[messageHeader].resource only MedComCareCommunicationMessageHeader
* entry[messageHistory].resource.activity from MedComCareCommunicationMessageActivities


Alias: $BundleType = http://hl7.org/fhir/bundle-type
Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes


Instance: 0dd5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Message Example"
Description: "Example of a care communication message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[messageHeader].fullUrl = "MessageHeader/42cb9200-f421-4d08-8391-7d51a2503cb4"
* entry[messageHeader].resource = 42cb9200-f421-4d08-8391-7d51a2503cb4
* entry[citizen].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[citizen].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[3].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[4].fullUrl = "Encounter/09437365-821a-4a94-b32b-8916db1d5f62"
* entry[4].resource = 09437365-821a-4a94-b32b-8916db1d5f62
* entry[5].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[5].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[6].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[6].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[7].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[7].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[8].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[8].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

Instance: 256549f7-ed10-422d-8088-f7222b686e46
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Reply Message Example"
Description: "Example of a reply to a care communication message."
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[messageHeader].fullUrl = "MessageHeader/b0d424f8-33a9-4cc2-a528-a6cc1c58727b"
* entry[messageHeader].resource = b0d424f8-33a9-4cc2-a528-a6cc1c58727b
* entry[citizen].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[citizen].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Communication/75fd6a1b-6af4-4b5c-a170-f70e95aa1e7a"
* entry[3].resource = 75fd6a1b-6af4-4b5c-a170-f70e95aa1e7a
* entry[4].fullUrl = "Encounter/09437365-821a-4a94-b32b-8916db1d5f62"
* entry[4].resource = 09437365-821a-4a94-b32b-8916db1d5f62
* entry[5].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[5].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[6].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[6].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[7].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[7].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[8].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[8].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[9].fullUrl = "Provenance/f18213f8-2e2c-458d-86ff-4e48ac5d7162"
* entry[9].resource = f18213f8-2e2c-458d-86ff-4e48ac5d7162
* entry[10].fullUrl = "Provenance/30c0f779-783f-46b2-b38f-faebd2bedb3f"
* entry[10].resource = 30c0f779-783f-46b2-b38f-faebd2bedb3f

Instance: 40426e3e-978f-46e8-a366-a30f27854b0a
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom Care Communication Forward Message Example"
Description: "Example of a forward of a care communication message."
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[messageHeader].fullUrl = "MessageHeader/d5bd2111-2576-48d3-84d4-8be0297a038d"
* entry[messageHeader].resource = d5bd2111-2576-48d3-84d4-8be0297a038d
* entry[citizen].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[citizen].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Communication/4c712bdc-1558-4125-a854-fa8b3a11f6ed"
* entry[3].resource = 4c712bdc-1558-4125-a854-fa8b3a11f6ed
* entry[4].fullUrl = "Encounter/09437365-821a-4a94-b32b-8916db1d5f62"
* entry[4].resource = 09437365-821a-4a94-b32b-8916db1d5f62
* entry[5].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[5].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[6].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[6].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[7].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[7].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[8].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[8].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[9].fullUrl = "Provenance/fdcf5a48-8264-48d5-8291-15f54b187b3e"
* entry[9].resource = fdcf5a48-8264-48d5-8291-15f54b187b3e
* entry[10].fullUrl = "Provenance/7466d9f6-d3ae-4be5-8ed7-b333dad30205"
* entry[10].resource = 7466d9f6-d3ae-4be5-8ed7-b333dad30205
