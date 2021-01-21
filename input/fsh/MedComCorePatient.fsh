Profile: MedComCorePatient
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient
Id: medcom-core-patient
Description: "Patient/citizen resource to use as subject in MedCom communication"
* identifier[cpr] ^short = "Unique identification number for all citizens in Denmark"
* name[official] 1.. MS
* name[official].given MS
* name[official].given ^definition = "Shall be present if the official given name of the patient is known, danish \"fornavn\" "
* name[official].family MS
* name[official].family ^definition = "Shall always be present, danish \"efternavn\" "
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
* managingOrganization only Reference(http://medcomfhir.dk/fhir/medcom-core/StructureDefinition/medcom-core-organization)
* managingOrganization ^type.aggregation = #bundled


Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Eric Flame"
Description: "Patient with a managing organization. Valid only if used in a bundle (message)."
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
