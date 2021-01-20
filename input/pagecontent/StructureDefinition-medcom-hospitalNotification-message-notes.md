This section describes how to handle  HospitalNotificationMessages and how to handle errors. 

#### How to send HospitalNotification Messages for the same encounter
This section describes how a HospitalNotificationMessage flow.

Each HospitalNotificationMessage message/notification is a seperate messages where only the encounter *id* and the episodeOfCare *identifier* relates the messages.


The change of state is dispicted in both the MedComHospitalNotificationEncounter *status*/*class* and the MedComCoreProvenance element *system*.
Please refer to following map document for details (The document text is at present only in danish).
[Map between the Provenance *system* and the Encounter *class*/*status* ](./hospitalnotification/pdf/Oversigt_adviskoder_HL7_FHIR.pdf)


Please refer to following example:
* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HospitalNotificationAdmitFinishedExample.png)


#### Message entered in error  
This section describes how message entered in error shall be handled.

Please refer to the following examples:
* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HospitalNotificationEnteredInErrorExample.png)
