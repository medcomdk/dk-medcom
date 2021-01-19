This section describes how to handle reply of MedComCareCommunicationMessages, forwarding og messages and how to handle errors. 

#### How to reply a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage reply flow shall be handled.
Please refer to following example:

#### How to forward a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage forward flow shall be handled.
Please refer to following example:


#### Message entered in error  
This section describes how message entered in error shall be handled.
If a message a is sent by mistake, the message a shall be marked as sent as error by creating a new FHIR MedComCareCommunicationMessage 
using the MedComCoreEncounter status "entered-in-error" and letting the provenance element point to the errorneous message.
Please refer to the following examples:
