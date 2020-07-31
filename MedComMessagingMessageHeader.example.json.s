{
    "resourceType": "Bundle",
    "type": "collection",
    "entry": [
        {
            "fullUrl": "urn:uuid:82468589-166e-456a-82ba-d729ca9fc29c",
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
                    "reference": "urn:uuid:3ff6d789-af64-4d9c-aa1d-0087d29e9e1c"
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
                    "code": "patient-link"
                },
                "resourceType": "MessageHeader"
            }
        },
        {
            "fullUrl": "urn:uuid:3ff6d789-af64-4d9c-aa1d-0087d29e9e1c",
            "resource": {
                "meta": {
                    "profile": [
                        "http://medcom.dk/fhir/StructureDefinition/medcom-messaging-organization"
                    ]
                },
                "resourceType": "Organization",
                "id": "3ff6d789-af64-4d9c-aa1d-0087d29e9e1c",
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
            }
        }
    ]
}