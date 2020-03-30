Advis om sygehusophold
=============

Introduktion 
=============

Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard ”Advis
om sygehusophold”. Den indeholder formål, baggrund og overordnede krav til
indhold og forretningsmæssig anvendelse af advis om sygehusophold. Målgruppen er
it-systemleverandører, og implementeringsansvarlige i regioner og kommuner, som
skal it-understøtte afsendelse og modtagelse af advis om sygehusophold. Krav til
indhold og forretningsmæssig anvendelse af Advis om sygehusophold er udarbejdet
i samarbejde med MedComs
[hjemmepleje-sygehusgruppe](https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Hjemmepleje-sygehusgruppe)
og
[kommune-sygehusleverandørgruppe](https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Kommune-Sygehusleverand%C3%B8rgruppen)
i MedCom11 perioden 2018-2019.

De tekniske specifikationer for FHIR-advis standarden findes på Simplifier.net.

Advis om sygehusophold erstatter de tidligere MedCom standarder
indlæggelsesadvis DIS20/XDIS20 og udskrivningsadvis DIS17/XDIS17.

Formål
======

Advis om sygehusophold medvirker til at sikre grundlaget for et sammenhængende
patientforløb over sektorgrænser. Det specifikke formål med advis om
sygehusophold er at informere borgerens aktuelle omsorgs- og sundhedsaktører i
primær sektor om start og sluttidspunkt for borgerens ophold på et sygehus. Det
giver mulighed for at pausere aktuelle ydelser under sygehusopholdet og
igangsætte, når det ophører. Samtidigt kan advis om sygehusophold trigge
automatisk afsendelse af en indlæggelsesrapport (XDIS16) fra modtagers system,
som giver sygehuspersonalet et overblik over borgerens aktuelle ydelser,
funktionsniveau og sundhedsfaglige problemer. Advis om sygehusophold indeholder
derudover advis om patientens orlov fra sygehusophold, samt akut ambulant
sygehusophold.

Baggrund 
=========

Da sygehuset ikke på forhånd kan afgøre hvilke borgere, der aktuelt modtager
ydelser fra primær sektor, dannes advis om sygehusophold på alle borgere med
cpr. nr. og fast bopælsadresse i Danmark ved registrering i sygehusets
EPJ-system. Modtagersystemet sikrer at advis om sygehusophold kun indlæses og
synliggøres på borgere, som modtager ydelser indenfor det gældende lovgrundlag
(Se afsnit 4).

Registrering af sygehusophold i EPJ-systemet har sammenhæng til indberetning til
landspatientregisteret, LPR. Ved overgang til LPR3 (2019) er begreberne indlagt
og ambulant ophævet i indberetningen til LPR, og erstattet af fysisk fremmøde. I
praksis fortsætter alle regioner med registrering af sygehusophold som hhv.
ambulant og indlagt. Det er aftalt mellem parterne bag udvikling af moderniseret
sygehusadvis, at rammen for de sygehusophold, som skal advis understøttes, er:

*”Alle akutte sygehusophold med patientens fysiske fremmøde, samt alle planlagte
sygehusophold med patientens fysiske fremmøde mhp. Indlæggelse”.*

Lovgrundlag
===========

Adviser om sygehusophold udveksles med baggrund i Sundhedsloven og
Retssikkerhedslovens §12c:

”Til brug for tilrettelæggelsen af omsorgsopgaver m.v. efter § 79 a og kapitel
16 i lov om social service og sundhedsloven samt til brug for opfølgning af
sager efter §§ 8-10 i lov om sygedagpenge kan kommunalbestyrelser og sygehuse
udveksle oplysninger om indlæggelse på og udskrivning fra sygehuse af borgere i
kommunen. Udvekslingen kan ske automatisk og uden borgerens samtykke.”
(Retssikkerhedsloven 12c LBK nr. 826 af 16/08/2019)

Servicelovens §79 a omfatter forebyggende hjemmebesøg og kapitel 16 indeholder
§§ 81-99, som omfatter *Personlig hjælp, omsorg og pleje samt plejetestamenter.*

OBS: Her tilføjes status for lovgivning vedr. udveksling af akut ambulante
sygehusophold.

Krav til indhold og gevinster ved advis om sygehusophold
========================================================

’Advis om sygehusophold’ skal indeholde:

1.  Patientens cpr.nr

2.  Tidspunkt og klokkeslæt for start/slut af sygehusophold

3.  Navn på sygehusafdeling/afsnit og sygehus

4.  Angivelse af, om adviset skal trigge en indlæggelsesrapport fra modtager af
    advis

5.  Angivelse af, hvortil indlæggelsesrapport skal sendes

6.  Status for sygehusophold (jf. Tabel 0.1). Standarden indeholder også X type
    status for sygehusophold, som kan anvendes hvis potentielle fremtidige
    kategorier af sygehusophold skal understøttes.

| **Hændelse**  | **Kode**[^1] |
|---------------|--------------|


    [^1]: Foreløbige kodenavne.

        **Navn på advis notifikation**

        **Gevinst**

| Start ophold                |       |                                                          |                                                                                                                                                                                                                                                                           |   |
|-----------------------------|-------|----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|
| Akut ambulant start         | STAA  | START sygehusophold - Akut ambulant                      | Modtager informeres om at borger er registreret som ”akut ambulant” på sygehuset. Specifik status giver mulighed for at modtagersystem kan opsætte regler for systemhandlinger.                                                                                           |   |
| Indlagt                     | STIN  | START sygehusophold - Indlagt                            | Modtager informeres om at borger er registreret som ”indlagt” på sygehuset. Specifik status giver mulighed for at modtagersystem kan opsætte regler for systemhandlinger.                                                                                                 |   |
| XX type start sygehusophold | STXX  | START sygehusophold - X                                  | En eller flere optionelle typer af sygehusophold, som kan tilføjes ved behov                                                                                                                                                                                              |   |
| Slut ophold                 |       |                                                          |                                                                                                                                                                                                                                                                           |   |
| Afsluttet til hjemmet       | SLHJ  | SLUT sygehusophold – Afsluttet til hjemmet/primær sektor | Modtager informeres om, at borgeren afsluttes til hjemmet eller primær sektor. Giver mulighed for, at modtagersystem kan opsætte regler for systemhandlinger, fx genoptagelse af ydelser. Anvendes ie ved overflytning.                                                   |   |
| XX type slut sygehusophold  | SLXX  | SLUT sygehusophold – X                                   | Afslutning af en eller flere optionelle typer af sygehusophold, som kan tilføjes ved behov                                                                                                                                                                                |   |
| Død                         |       |                                                          |                                                                                                                                                                                                                                                                           |   |
| Patienten er død            | MORS  | DØD                                                      | Modtager informeres om at borgeren er død. Anvendes både ved død ved ankomst og ved død under sygehusophold.                                                                                                                                                              |   |
| Orlov                       |       |                                                          |                                                                                                                                                                                                                                                                           |   |
| Patienten starter orlov     | STOR  | START orlov                                              | Information om aktuel orlov er nyttig når/hvis pårørende/borgeren selv henvender sig under orloven. Behandlingsansvaret for patienter på orlov er sygehusets, og det skal meddeles særskilt, hvis andre aktører end sygehuset skal levere ydelser under patientens orlov. |   |
| Patienten slutter orlov     | SLOR  | SLUT orlov                                               |                                                                                                                                                                                                                                                                           |   |
| Annulleringer               |       |                                                          |                                                                                                                                                                                                                                                                           |   |
| Annullering                 | ANXX  | ANNULLERET 'Navn på advisnotifikation'                   | Annullering af tidligere afsendt advis ophæver den. Anvendes ved forkert valg af sygehusophold eller forkert cpr.                                                                                                                                                         |   |
| Rettelser                   |       |                                                          |                                                                                                                                                                                                                                                                           |   |
| Rettelser                   | REXX  | RETTET 'Navn på advisnotifikation                        | Retter indhold i tidligere afsendt advis, fx sygehusafdeling eller tidspunkt.                                                                                                                                                                                             |   |

*Tabel.1 Status for sygehusophold*

Forretningsregler for anvendelse af ’Advis om sygehusophold’
============================================================

Formålet med formulerede forretningsregler for anvendelse er, at parterne, som
anvender advis, understøtter meddelelserne i overensstemmelse med behovet.
Forretningsregler er et tillæg til den givne standard for ”Advis for
sygehusophold”, som kan opdateres i takt med, at behovene ændrer sig.

1.  **Adviser genereres på basis af tidstro registrering i EPJ/PAS-systemet.**

Hvis der i PAS/EPJ anvendes fremtidige registreringer af planlagte kontakter,
skal disse først udløse advis, når tidspunktet indtræffer, dvs. ved patientens
fysiske fremmøde

1.  **Slut sygehusophold (indlagt og akut ambulant) anvendes kun, når patienten
    afsluttes (til hjemmet/primær sektor)**

Advis om ’SLUT sygehusophold’ må ikke anvendes ved overflytninger[^2].

[^2]: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus A
til sygehus B, er det tilladt at sende advis af typen ”SLUT sygehusophold”. Den
planlagte overflytning bør fremgå/være kommunikeret til modtageren i
plejeforløbsplanen og/eller i en korrespondancemeddelelse.

1.  **Hvis en akut ambulant kontakt ændres til indlagt, sendes et nyt ’START
    sygehusophold - indlagt ’-advis.**

Der skal *ikke* sendes advis om ’Slut sygehusophold’, når den akut ambulante
kontakt ændres til indlagt. Advis om ’SLUT sygehusophold’ sendes først, når
patienten derefter afsluttes (til hjem/primær sektor).

1.  **Hvis en indlagt kontakt ændres til akut ambulant, sendes et nyt advis
    ’START sygehusophold – akut ambulant ’-advis.**

Der skal *ikke* sendes advis om ’Slut sygehusophold’, når indlæggelsen ændres
til at være akut ambulant. Advis om ’SLUT sygehusophold’ sendes først, når
patienten derefter afsluttes (til hjem/primær sektor). Denne hændelse anses for
sjælden.

1.  **Hvis patienten er erklæret død ved ankomst, erklæres død efter ankomst
    eller dør under sygehusopholdet sendes et advis af typen ’DØD’.**

Advistypen ’DØD’ skal således anvendes i alle scenarier, hvor patienten er død
eller dør.

1.  **Hvis patienten registreres på orlov i EPJ, sendes advis, når patienten
    starter (’START orlov’) og slutter (’SLUT orlov’) sin orlov (til hjemmet)**

Orlovsadviser sendes udelukkende, når patienten registreres på orlov til
hjemmet. Orlov ved dobbeltindlæggelser[^3] skal således *ikke* udløse
orlovsadviser. Orlovsadviser skal ikke aktivere ydelser i kommunen uden anden
aftale herom.

[^3]: Samtidig indlæggelse på psykiatrisk og somatisk afdeling.

1.  **Hvis der er sket en fejlregistrering, som har udløst et fejlagtigt advis,
    skal der sendes en rettelse eller en annullering efter følgende
    principper:**

    1.  Hvis der er sendt advis pga. forkert indtastet cpr.nr. eller forkert
        valg af sygehusophold sendes **en annullering**.

    2.  Hvis der er sendt et advis med forkert angivelse af sygehusafdeling,
        forkert tidspunkt for opholdet sendes **en rettelse**, dvs. et nyt
        korrekt advis, som erstatter tidligere advis. Der skal her *ikke* sendes
        en annullering.

2.  **Der anvendes ikke specifikke overflytningsadviser.** Der er krav om, at
    der sendes nyt advis med ”Start sygehusophold”, fra det sygehus, patienten
    er flyttet *til*, hvad enten det er i samme region eller i en anden region.
    Der sendes *ikke* advis fra det sygehus, patienten overflyttes *fra* [^4]*.*

    [^4]: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus
    A til sygehus B, er det tilladt at sende advis af typen ”SLUT
    sygehusophold”. Den planlagte overflytning bør fremgå/være kommunikeret til
    modtageren i plejeforløbsplanen og/eller i en korrespondancemeddelelse.

**9. Udskrivning til hospice.** Flowet håndteres som overflytning til andet
sygehus i samme eller anden region. Hospice afsender ’Start sygehusophold -
indlagt’-advis ved patientens ankomst.

Use cases 
==========

Til brug for den tekniske implementering af sygehusadvis findes detaljerede use
case beskrivelser, som forbinder indholdsmæssige krav med den forretningsmæssige
anvendelse for afsender og modtager af sygehusadvis. Use cases findes *her*
(link).

Tekniske specifikationer for advis om sygehusophold
===================================================

Link til FHIR-dokumentationen på Simplifier?

Eksempel på advis om sygehusophold
==================================

|   |                            |                               |   |
|---|----------------------------|-------------------------------|---|
|   | **ADVIS OM SYGEHUSOPHOLD** |                               |   |
|   |                            |                               |   |
|   | Patient                    |                               |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   | **Cpr.nr.**                | XXXXXX-XXXX                   |   |
|   | **Tidspunkt**              | 22-08-18 kl. 09:30            |   |
|   | **Status sygehusophold**   | Start sygehusophold - indlagt |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   | Modtager                   |                               |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   | **Lokationsnr.**           | 5790000121441                 |   |
|   | **Kommunenr.**             | 461                           |   |
|   | **Enhed**                  | Æbleblomsten                  |   |
|   | **Afdeling**               | Hjemmeplejen                  |   |
|   | **Organisation**           | Odense Kommune                |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   | Afsender                   |                               |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   | **Lokationsnr.**           | 5790001354145                 |   |
|   | **Sygehusafdelingsnr.**    | 4202360                       |   |
|   | **Enhed**                  | Q                             |   |
|   | **Afdeling**               | Infektionsmedicinsk Afdeling  |   |
|   | **Organisation**           | Odense Universitetshospital   |   |
|   |                            |                               |   |
|   |                            |                               |   |
|   |                            |                               | ¨ |

Dette er et eksempel på, hvordan ’Advis om sygehusophold’ kunne se ud. I adviset
vil ’Status sygehusophold’ angive hvilken hændelse, der har udløst adviseringen
jf. Tabel 1.

Rettelser 
==========

I dette afsnit vil rettelser til standarden løbende dokumenteres.

| Version | Dato       | Ansvarlig       | Beskrivelse                                                        |
|---------|------------|-----------------|--------------------------------------------------------------------|
| 0.6.    | 03.10.2019 | Jeanette Jensen | 1. udkast på tekstuel beskrivelse af FHIR-advis standard           |
| 0.7.    | 11.12.2019 | Jeanette Jensen | Tilføjet bemærkning omkring håndtering af udskrivning til hospice. |
