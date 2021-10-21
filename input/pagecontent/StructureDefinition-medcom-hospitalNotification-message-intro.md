### Scope and usage 
This profile is the root profile of MedCom HospitalNotification message. 
<img alt="HospitalNotification" src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The message contains a bundle that is selfcontained regarding references. 
The Bundle containing the HospitalNotification message shall contain one instance of the MedComMessagingMessageHeader. By convention the cardinality is shown as 0..*

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessage.  


For description regarding the transportation layer please refer to this guide:  
   

English:
* [MedCom FHIR-message and enclosing envelope](./pdf/MedCom_FHIR-messages_and_enclosing_envelope.pdf)  

Danish:
* [ MedComs FHIR-meddelelser og forsendelseskuvert](./pdf/MedComs_FHIR-meddelelser_og_forsendelseskuvert.pdf)  

#### Information regarding non-technical guide lines and use cases for HospitalNotification is found here:

English:
* [HosptialNotification Use Cases](./hospitalnotification/pdf/Use%20cases_Hospital%20Notification_eng.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_Hospital_Notification.pdf)

Danish:
* [HospitalNotification Use Cases](./hospitalnotification/pdf/Use_cases_advis_om_sygehusophold.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_advis_om_sygehusophold.pdf)

### Description using examples for the HospitalNotification message flow.
Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order. 

The change of state is dispicted in both the MedComHospitalNotificationEncounter element *status* and *class*, the MedComCoreProvenance element *system*, and the MedComCorePatient *deceased*.
Please refer to following map document for details.  
[Map between the Provenance *system* and the Encounter *class*/*status* ](./hospitalnotification/pdf/Overview_advis_codes_HL7_FHIR.pdf)

#### How to send HospitalNotificationMessages for the same encounter
This section describes how a HospitalNotificationMessage flows.

Please refer to the following examples:  

* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HospitalNotificationAdmitFinishedExample.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay ](./hospitalnotification/HospitalNotificationAdmitOnleaveFinishedExample.png)

#### Message entered in error    
This section describes how message entered in error shall be handled.

Please refer to the following example:  
* [Simplified example of a MedComHospitalNotificationMessage entered in error ](./hospitalnotification/HospitalNotificationEnteredInErrorExample.png)

#### Data references between MedCom OIOXML advis standard and the MedCom FHIR HospitalNotification message.
This section describes how to map between MedCom OIOXML advis standard and the MedCom FHIR HospitalNotification message

Please notice, that not all elements are mentioned in the document, as not all information in relevant to map between the two standards.
Please refer to the following document:  
* [OIOXML advis -> HospitalNotification ](./hospitalnotification/oioxmlReferencesHospitalNotificaion.png)


