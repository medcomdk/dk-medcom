{
    "type": "message",
    "resourceType": "Bundle",
    "id": "10bb101f-a121-4264-a920-67be9cb82c74",
    "meta": {
        "versionId": "1",
        "lastUpdated": "2020-06-23T08:10:24.187+00:00",
        "profile": [
            "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-message",
            "http://medcom.dk/fhir/StructureDefinition/medcom-clinicalEmailMessage"
        ]
    },
    "entry": [
        {
            "resource": {
                "meta": {
                    "profile": [
                        "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-messageHeader"
                    ]
                },
                "source": {
                    "endpoint": "http://example.org/clients/ehr-lite"
                },
                "sender": {
                    "reference": "http://acme.com/ehr/fhir/Organization/1"
                },
                "destination": [
                    {
                        "endpoint": "llp:10.11.12.14:5432",
                        "receiver": {
                            "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
                        },
                        "extension": [
                            {
                                "url": "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-destinationUseExtension",
                                "valueCoding": {
                                    "system": "urn:medcom:destinationuse",
                                    "code": "primary"
                                }
                            }
                        ]
                    },
                    {
                        "endpoint": "llp:10.11.12.14:5432",
                        "receiver": {
                            "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
                        },
                        "extension": [
                            {
                                "url": "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-destinationUseExtension",
                                "valueCoding": {
                                    "system": "urn:medcom:destinationuse",
                                    "code": "cc"
                                }
                            }
                        ]
                    }
                ],
                "responsible": {
                    "reference": "http://acme.com/ehr/fhir/Practitioner/2323-33-4"
                },
                "focus": [
                    {
                        "reference": "http://acme.com/ehr/fhir/Patient/pat1"
                    },
                    {
                        "reference": "http://acme.com/ehr/fhir/Patient/pat12"
                    }
                ],
                "eventCoding": {
                    "system": "http://example.org/fhir/message-events",
                    "code": [
                        "patient-link"
                    ]
                },
                "resourceType": "MessageHeader"
            },
            "fullUrl": "urn:uuid:267b18ce-3d37-4581-9baa-6fada338038b"
        },
        {
            "resource": {
                "meta": {
                    "profile": [
                        "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-organization"
                    ]
                },
                "id": "1",
                "resourceType": "Organization",
                "identifier": [
                    {
                        "system": "urn:oid:1.2.208.176.1.1",
                        "value": "323841000016009"
                    },
                    {
                        "system": "urn:oid:1.3.88",
                        "value": "5790000121830"
                    }
                ],
                "name": "NOVAX, Test til lægesystem"
            },
            "fullUrl": "http://acme.com/ehr/fhir/Organization/1"
        },
        {
            "resource": {
                "contact": [
                    {
                        "organization": {
                            "display": "Walt Disney Corporation",
                            "reference": "Organization/1"
                        },
                        "relationship": [
                            {
                                "coding": [
                                    {
                                        "system": "http://example.org/fhir/CodeSystem/patient-contact-relationship",
                                        "code": "E"
                                    }
                                ]
                            }
                        ]
                    }
                ],
                "name": [
                    {
                        "use": "official",
                        "given": [
                            "Duck"
                        ],
                        "family": "Donald"
                    }
                ],
                "resourceType": "Patient",
                "id": "pat1",
                "identifier": [
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                                    "code": "MR"
                                }
                            ]
                        },
                        "use": "usual",
                        "value": "654321",
                        "system": "urn:oid:0.1.2.3.4.5.6.7"
                    }
                ],
                "managingOrganization": {
                    "display": "ACME Healthcare, Inc",
                    "reference": "Organization/1"
                },
                "text": {
                    "status": "generated",
                    "div": "<div xmlns='http://www.w3.org/1999/xhtml'>\n  <p>Patient Donald DUCK @ Acme Healthcare, Inc. MR = 654321</p>\n</div>"
                },
                "active": true,
                "gender": "male"
            },
            "fullUrl": "http://acme.com/ehr/fhir/Patient/pat1"
        },
        {
            "resource": {
                "name": [
                    {
                        "use": "official",
                        "given": [
                            "Duck",
                            "D"
                        ],
                        "family": "Donald"
                    }
                ],
                "resourceType": "Patient",
                "id": "pat2",
                "identifier": [
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                                    "code": "MR"
                                }
                            ]
                        },
                        "use": "usual",
                        "value": "123456",
                        "system": "urn:oid:0.1.2.3.4.5.6.7"
                    }
                ],
                "_gender": {
                    "extension": [
                        {
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/v2-0001",
                                        "code": "A",
                                        "display": "Ambiguous"
                                    }
                                ]
                            },
                            "url": "http://example.org/Profile/administrative-status"
                        }
                    ]
                },
                "managingOrganization": {
                    "display": "ACME Healthcare, Inc",
                    "reference": "Organization/1"
                },
                "text": {
                    "status": "generated",
                    "div": "<div xmlns='http://www.w3.org/1999/xhtml'>\n  <p>Patient Donald D DUCK @ Acme Healthcare, Inc. MR = 123456</p>\n</div>"
                },
                "active": true,
                "gender": "other"
            },
            "fullUrl": "http://acme.com/ehr/fhir/Patient/pat12"
        }
    ],
    "timestamp": "2020-07-14T11:15:33+10:00"
}