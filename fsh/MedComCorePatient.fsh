Profile: MedComCorePatient
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient
Id: medcom-core-patient
Title: "MedCom Core Patient"
Description: "Patient resource to use as subject in MedCom communication"
* name[official] 1.. MS
* name[official].given MS
* name[official].given ^definition = "Shall be present if the official given name of the patient is known"
* name[official].family MS
* telecom MS
* telecom ^definition = "Shall contain all known, relevant telecom information of the patient"
* address MS
* address ^definition = "Shall contain all known, relevant addresses of the patient"
* address.line MS
* address.line ^definition = "Shall contain the known information about the street name, number etc. to provide an exact address"
* address.city MS
* address.city ^definition = "Shall be present if the city is known"
* address.postalCode MS
* address.postalCode ^definition = "Shall be present if the postal code is known"
* managingOrganization 1.. MS
* managingOrganization only Reference(http://medcom.dk/fhir/medcom-core/StructureDefinition/medcom-core-organization)
* managingOrganization ^type.aggregation = #bundled


Instance: EricFlame
InstanceOf: MedComCorePatient
Title: "Eric Flame"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0102030405"
* name[official].use = #official
* name[official].given = "Eric"
* name[official].family = "Flame"
* telecom.system = #phone
* telecom.value = "12345678"
* address.line = "Flammesvinget 1"
* address.city = "Aarhus"
* address.postalCode = "8000 C"
* managingOrganization = Reference(BurnCenter)


Instance: BurnCenter
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "123456789012345"
* name = "Aros Burn Center"
