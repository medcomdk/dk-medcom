Profile: MedComHospitalNotificationMessage
Parent: MedComMessagingMessage
Id: medcom-hospitalNotification-message
Description: "A message for a Hospital Notification. The message is triggered as patients are admitted, onleave or has finished a hospital stay in order to notify the relevant Municipalicy home care"
* entry contains
    patient 1..1
* entry[patient] 1..1 MS
* entry[patient].resource 1.. MS
* entry[patient].resource only MedComCorePatient
* entry[messageHeader].resource only MedComHospitalNotificationMessageHeader
* entry[messageHistory].resource.activity from MedComHospitalNotificationMessageActivities


Instance: 15e5b880-c087-4055-b9ec-99108695f81d
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Admit Example"
Description: "Example of MedCom Hospital Notification Admit"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/51b27813-8aa8-4fa1-846b-aeabf5afb7d4"
* entry[messageHeader].resource = 51b27813-8aa8-4fa1-846b-aeabf5afb7d4
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Encounter/7790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[3].resource = 7790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[6].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0

Instance: 53128d9b-cede-4c7f-8904-809eab322d7d
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Start Leave Example"
Description: "Example of MedCom Hospital Notification Start Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[messageHeader].fullUrl = "MessageHeader/b563a2b2-bf92-4b13-bbd2-0a021a95bded"
* entry[messageHeader].resource = b563a2b2-bf92-4b13-bbd2-0a021a95bded
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Encounter/556e9c54-23d2-43a4-816e-951d2a6e3281"
* entry[3].resource = 556e9c54-23d2-43a4-816e-951d2a6e3281
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/ccea231f-51c9-4eaa-a2f8-5a1e7d103574"
* entry[6].resource = ccea231f-51c9-4eaa-a2f8-5a1e7d103574
* entry[7].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa"
* entry[7].resource = dc421d0a-cded-470f-9a53-2ddba7583baa

Instance: 094de8ee-bd94-475e-b454-b8fbbef8a685
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message End Leave Example"
Description: "Example of MedCom Hospital Notification End Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[messageHeader].fullUrl = "MessageHeader/e47254da-f170-46f0-b624-4778a9c92b1f"
* entry[messageHeader].resource = e47254da-f170-46f0-b624-4778a9c92b1f
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Encounter/7790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[3].resource = 7790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/0ffb42f5-d172-4df0-92c1-012f55667879"
* entry[6].resource = 0ffb42f5-d172-4df0-92c1-012f55667879
* entry[7].fullUrl = "Provenance/1d70842e-1168-41a3-a409-45f63c10f4d2"
* entry[7].resource = 1d70842e-1168-41a3-a409-45f63c10f4d2
* entry[8].fullUrl = "Provenance/04db4939-7c60-4ac6-aefc-523f809ccba6"
* entry[8].resource = 04db4939-7c60-4ac6-aefc-523f809ccba6

Instance: 04aa42a4-86db-4e68-9b38-9dda0dfd5774
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Discharge Example"
Description: "Example of MedCom Hospital Notification Discharge"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/01affa53-c157-4080-abb0-8e681524f969"
* entry[messageHeader].resource = 01affa53-c157-4080-abb0-8e681524f969
* entry[patient].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[patient].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[2].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[2].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[3].fullUrl = "Encounter/8405ba2d-467a-4e92-9acc-9dc2a629760f"
* entry[3].resource = 8405ba2d-467a-4e92-9acc-9dc2a629760f
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/491827bf-337e-4083-9ef0-101b38966179"
* entry[6].resource = 491827bf-337e-4083-9ef0-101b38966179
* entry[7].fullUrl = "Provenance/2710698c-83eb-4c3e-81c8-fe8e40baf524"
* entry[7].resource = 2710698c-83eb-4c3e-81c8-fe8e40baf524


//Example of patient admittet before deceased message
Instance: bfe14780-3f38-4a82-b102-c198e3762b45
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Admitted before Deceased Example"
Description: "Example of MedCom Hospital Notification admit when patient is later deceased"
* type = $BundleType#message
* timestamp = 2021-01-10T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/29b4818e-02de-4cc4-b418-d20cbc7b5404"
* entry[messageHeader].resource = 29b4818e-02de-4cc4-b418-d20cbc7b5404
* entry[patient].fullUrl = "Patient/5b72c625-0570-4111-b272-f0351344f8b6"
* entry[patient].resource = 5b72c625-0570-4111-b272-f0351344f8b6
* entry[2].fullUrl = "Organization/bca68510-fe3b-4161-aba0-908a693eb54f"
* entry[2].resource = bca68510-fe3b-4161-aba0-908a693eb54f
* entry[3].fullUrl = "Encounter/d6145390-62ad-4cd0-8fe0-9679a34c44a9"
* entry[3].resource = d6145390-62ad-4cd0-8fe0-9679a34c44a9
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/3302eb96-a10a-47c3-95b6-461cb053cbd7"
* entry[6].resource = 3302eb96-a10a-47c3-95b6-461cb053cbd7



//Example of patient deceased message
Instance: e099bbf3-3fca-4722-a248-bfe1aa956410
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom Hospital Notification Message Discharge Deceased Example"
Description: "Example of MedCom Hospital Notification Discharge when patient is deceased"
* type = $BundleType#message
* timestamp = 2021-01-13T13:44:14Z
* entry[messageHeader].fullUrl = "MessageHeader/8efc6d95-6161-4493-99c9-f359488dedb8"
* entry[messageHeader].resource = 8efc6d95-6161-4493-99c9-f359488dedb8
* entry[patient].fullUrl = "Patient/382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[patient].resource = 382fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[2].fullUrl = "Organization/bca68510-fe3b-4161-aba0-908a693eb54f"
* entry[2].resource = bca68510-fe3b-4161-aba0-908a693eb54f
* entry[3].fullUrl = "Encounter/8405ba2d-467a-4e92-9acc-9dc2a629760fWhenDeceased"
* entry[3].resource = 8405ba2d-467a-4e92-9acc-9dc2a629760fWhenDeceased
* entry[4].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[4].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[5].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[5].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[6].fullUrl = "Provenance/09942adb-197a-4e30-bec8-566e3a113efe"
* entry[6].resource = 09942adb-197a-4e30-bec8-566e3a113efe



