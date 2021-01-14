Profile: MedComCoreOrganization
Parent: Organization
Id: medcom-core-organization
Description: "A formally recognized organizations within danish healthcare, registered with a SOR identifier issued by The Danish Health Data Authority"
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier contains sorIdentifier 1..1 MS
* identifier[sorIdentifier] only http://hl7.dk/fhir/core/StructureDefinition/dk-core-sor-identifier
* name MS
* name ^definition = "Name of the organaization. Shall be present if known by the sender."


Instance: BurnCenter
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
Description: "A core organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "123456789012345"
* name = "Aros Burn Center"

Instance: PractitionerClinic
InstanceOf: MedComCoreOrganization
Title: "Practitioner Clinic"
Description: "An organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "378631000016009"
* name = "Test Practitioner clinic"