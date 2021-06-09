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
* identifier[sorIdentifier] ^short = "Sundhedsvæsenets Organisationsregister (SOR) identifier"
* name MS
* name ^definition = "Name of the organaization. Shall be present if known by the sender."


Instance: 12ee0dde-a672-462f-820d-5efe832d73c9
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
Description: "A core organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "123456789012345"
* name = "Aros Burn Center"

Instance: bca68510-fe3b-4161-aba0-908a693eb54f
InstanceOf: MedComCoreOrganization
Title: "Practitioner Clinic"
Description: "An organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "378631000016009"
* name = "Test Practitioner clinic"

Instance: 01e1ba51-1a03-414d-8119-1b4614bf8f18
InstanceOf: MedComCoreOrganization
Title: "OUH Anæstesi-Intensiv Ambulatorium"
Description: "An organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "238091000016006"
* name = "OUH Anæstesi-Intensiv Ambulatorium"

Instance: 6a292295-1291-4f9f-8024-9346c5152ac2
InstanceOf: MedComCoreOrganization
Title: "SLB Anæstesiologisk Afsnit (Vejle)"
Description: "An organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "246721000016006"
* name = "SLB Anæstesiologisk Afsnit (Vejle)"

Instance: 2d758f02-1f6d-4832-be7e-5cfc5d094b53
InstanceOf: MedComCoreOrganization
Title: "Rigshospitalet Thorax-kirurgisk Klinik RT"
Description: "An organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "251791000016004"
* name = "Rigshospitalet Thorax-kirurgisk Klinik RT"

