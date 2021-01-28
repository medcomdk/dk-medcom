This section describes how to handle  HospitalNotificationMessages and how to handle errors. 

#### How to send HospitalNotification Messages for the same encounter
This section describes how a HospitalNotificationMessage flow.


The change of state is dispicted in both the MedComHospitalNotificationEncounter *status*/*class* and the MedComCoreProvenance element *system*.
Please refer to following map document for details.  
[Map between the Provenance *system* and the Encounter *class*/*status* ](./hospitalnotification/pdf/Overview_advis_codes_HL7_FHIR.pdf)


Please refer to following example:  
* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HospitalNotificationAdmitFinishedExample.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay ](./hospitalnotification/HospitalNotificationAdmitOnleaveFinishedExample.png)

#### Message entered in error    
This section describes how message entered in error shall be handled.

Please refer to the following examples:  
* [Simplified example of a MedComHospitalNotificationMessage entered in error ](./hospitalnotification/HospitalNotificationEnteredInErrorExample.png)

#### Data references between MedCom OIOXML advis standard and the MedCom FHIR profile
Please refer to:  
* [OIOXML advis -> HospitalNotification ](./hospitalnotification/oioxmlReferencesHospitalNotificaion.png)
