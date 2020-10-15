Profile: MedComMessagingOrganization
Parent: MedComCoreOrganization
Id: medcom-messaging-organization
Description: "A formally recognized organizations registered for exchanging messages within danish healthcare, registered with a EAN identifier issued by MedCom"
* identifier 2.. MS
* identifier contains eanIdentifier 1..1 MS
* identifier[eanIdentifier] only MedComEANIdentifier


Alias: $SORCode = urn:oid:1.2.208.176.1.1
Alias: $EANCode = urn:oid:1.3.88

Instance: MessageReceiver
InstanceOf: MedComMessagingOrganization
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[sorIdentifier].value = "543210987654321"
* identifier[eanIdentifier].value = "3210987654321"
* name = "Receiver Organization"

Instance: MessageSender
InstanceOf: MedComMessagingOrganization
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[sorIdentifier].value = "123456789012345"
* identifier[eanIdentifier].value = "1234567890123"
* name = "Sender Organization"