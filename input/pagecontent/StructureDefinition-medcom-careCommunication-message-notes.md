This section describes how to handle reply of MedComCareCommunicationMessages, forwarding og messages and how to handle errors. 

#### How to reply a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage reply flow shall be handled.
Please refer to following example:
* [Simplified example of a MedComCareCommunicationMessage reply message](./carecommunication/CareCommunicationReplyExample.png)

#### How to forward a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage forward flow shall be handled.

Please refer to following example:
* [Simplified example of a MedComCareCommunicationMessage forward message ](./carecommunication/CareCommunicationForwardExample.png)

The provenance element always references the last message transmitted, please refer to the example below for an example:
* [Simplified example of a MedComCareCommunicationMessage forward a reply message ](./carecommunication/CareCommunicationForwardReplyExample.png)

#### Message entered in error  
This section describes how message entered in error shall be handled.
If a message a is sent by mistake, the message a shall be marked as sent as error by creating a new FHIR MedComCareCommunicationMessage 
using the MedComCoreEncounter status "entered-in-error" and letting the provenance element point to the errorneous message.
Please refer to the following examples:
* [Simplified example of a MedComCareCommunicationMessage where original message is entered in error  ](./carecommunication/CareCommunicationSenderEnteredInErrorExample.png)
* [Simplified example of a MedComCareCommunicationMessage where message reply is entered in error  ](./carecommunication/CareCommunicationReplyEnteredInErrorExample.png)

#### Data references between MedCom XDIS91 standard and the MedCom FHIR CareCommunication profile
Please refer to:
* [XDIS91 -> CareCommunication  ](./carecommunication/oioxmlReferencesCareCommunication.png)
