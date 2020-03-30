## Forretningsmæssige use cases
----------------------------

| **ID**                         | **Navn**                                                                        |
|--------------------------------|---------------------------------------------------------------------------------|
| S1                             | Indlæg patient og send advis                                                    |
| K1                             | Modtag advisering om indlæggelse                                                |
|                                |                                                                                 |
| S2                             | Modtag akut ambulant patient og send advis                                      |
| K2                             | Modtag advisering om akut ambulant sygehusophold                                |
|                                |                                                                                 |
| S3                             | Afslut patient til hjemmet og send advis                                        |
| K3                             | Modtag advisering om patientens afslutning på sygehuset                         |
|                                |                                                                                 |
| S4                             | Start orlov for patient og send advis                                           |
| K4                             | Modtag advisering om orlov start                                                |
|                                |                                                                                 |
| S5                             | Modtag patient, der har været på orlov, og send advis                           |
| K5                             | Modtag advisering om orlov slut                                                 |
|                                |                                                                                 |
| S6.1                           | Overflyt patient til anden afdeling på samme sygehus                            |
| S6.2                           | Modtag patient fra anden afdeling på samme sygehus                              |
|                                |                                                                                 |
| S7.1a                          | Overflyt patient til andet sygehus i samme region (ansvarlig: hospital)         |
| [S7.1](#_Use_case_S7.2)b       | Overflyt patient til andet sygehus i anden region (ansvarlig: patient)          |
| S7.2                           | Modtag patient fra andet sygehus i samme region og send advis                   |
| K7                             | Modtag advisering om indlæggelse på andet sygehus i samme region (overflytning) |
|                                |                                                                                 |
| S8.1a                          | Overflyt patient til andet sygehus i anden region (ansvarlig: hospital)         |
| S8.1b                          | Overflyt patient til andet sygehus i anden region (ansvarlig: patient)          |
| S8.2                           | Modtag patient fra andet sygehus i anden region og send advis                   |
| K8                             | Modtag advisering om indlæggelse på andet sygehus i anden region (overflytning) |
|                                |                                                                                 |
| S9.1                           | Registrér patient, som er død under ankomst                                     |
| S9.2                           | Registrér patient, som dør under indlæggelse                                    |
| K9                             | Modtag advisering om død                                                        |
|                                |                                                                                 |
| S10                            | Indlæg patient, som er registreret som akut ambulant                            |
| K10                            | Modtag advisering om ændret status for akut ambulant borger                     |
|                                |                                                                                 |
| [A](#tekniske-use-cases-1)N_S1 | Annullér indlæggelse og send advis                                              |
| RE_S1                          | Ret indlæggelse og send advis                                                   |
| AN_K1                          | Modtag advisering om annulleret indlæggelse                                     |
| RE_K1                          | Modtag advisering om rettelse til indlæggelse                                   |
|                                |                                                                                 |
| AN_S2                          | Annullér akut ambulant ophold og send advis                                     |
| RE_S2                          | Ret akut ambulant sygehusophold                                                 |
| AN_K2                          | Modtag advisering om annulleret akut ambulant ophold                            |
| RE_K2                          | Modtag advisering om rettelse til akut ambulant sygehusophold                   |
|                                |                                                                                 |
| AN_S3                          | Annullér afslutning af sygehusophold og send advis                              |
| AN_K3                          | Modtag advisering om annulleret afslutning af sygehusophold                     |
|                                |                                                                                 |
| AN_S4                          | Annullér start orlov og send advis                                              |
| RE_S4                          | Ret start orlov og send advis                                                   |
| AN_K4                          | Modtag advisering om annulleret start orlov                                     |
| RE_K4                          | Modtag advisering om rettet start orlov                                         |
|                                |                                                                                 |
| AN_S5                          | Annullér afsluttet orlov og send advis                                          |
| RE_S5                          | Ret afsluttet orlov og send advis                                               |
| AN_K5                          | Modtag advisering om annulleret afsluttet orlov                                 |
| RE_K5                          | Modtage rettelse til afsluttet orlov                                            |
|                                |                                                                                 |
| AN_S9                          | Annullér død og send advis                                                      |
| RE_S9                          | Ret død og send advis                                                           |
| AN_K9                          | Modtag advisering om annulleret død                                             |
| RE_K9                          | Modtag advisering om rettelse af død                                            |
