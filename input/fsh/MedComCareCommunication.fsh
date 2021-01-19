Profile:        MedComCareCommunication
Parent:         Communication
Id:             medcom-careCommunication-communication
Description:    "Care related communication between two or more parties in Danish healthcare"
* status MS
* category 1..1 MS
* category from MedComCareCommunicationCategories
* priority MS
* priority from MedComCareCommunicationRequestPriority
* priority ^definition = "Shall be present if the message priority is known to be ASAP"
* subject 1.. MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* topic MS
* topic ^definition = "Description of the purpose/content, similar to a subject line in an email. Shall be present if topic of the message is known."
* encounter MS
* encounter only Reference(MedComCoreLpr3Encounter)
* encounter ^type.aggregation = #bundled
* encounter ^definition = "Shall contain an encounter with a reference to the episode of care if reported to the Danish National Patient Registry"
* sent 1.. MS
* recipient 0..
* recipient ^slicing.discriminator.type = #type
* recipient ^slicing.discriminator.path = "$this"
* recipient ^slicing.rules = #open
* recipient contains organization 0.. and practitionerRole 0.. MS
* recipient[organization] 0.. MS
* recipient[organization] only Reference(Organization)
* recipient[organization] ^definition = "The recipient of the message shall be present in case the recipient is given as more specific organization than the recipient of the message. E.g. a unit in a hospital or a home care group in a municipality."
* recipient[organization] ^type.aggregation = #bundled
* recipient[practitionerRole] 0.. MS
* recipient[practitionerRole] only Reference(PractitionerRole)
* recipient[practitionerRole] ^definition = "The recipient of the message shall be present in case the recipient is given as a practitioner role. E.g. a named general practitioner."
* recipient[practitionerRole] ^type.aggregation = #bundled
* recipient ^type.aggregation = #bundled
* sender 0.. MS
* sender only Reference(Organization or PractitionerRole)
* sender ^type.aggregation = #bundled
* sender ^definition = "The sender of the message shall be present in case the recipient is given as a practioner role or a more specific organization than the sender of the message. E.g. a unit in a hospital, a named general practitioner or a home care group in a municipality."
* payload 1..
* payload.extension contains medcom-core-datetime-extension named date 1..1 MS
* payload.extension contains medcom-core-author-extension named author 1..1 MS
* payload ^slicing.discriminator.type = #type
* payload ^slicing.discriminator.path = "$this.content"
* payload ^slicing.rules = #open
* payload ^slicing.ordered = true
* payload contains
    string 0.. MS and
    attachment 0.. MS
* payload[string].content[x] only string
* payload[string].content[x] MS
* payload[attachment].content[x] only Attachment
* payload[attachment] 0.. MS
* payload[attachment] ^definition = "The payload of the message shall contain all links or content attached to the message."
* payload[attachment].content[x] MS
* payload[attachment].contentAttachment 1.. MS
* payload[attachment].contentAttachment.contentType MS
* payload[attachment].contentAttachment.contentType ^definition = "The content type shall be present in case the content is provided as an attached document (data) or links to a document."
* payload[attachment].contentAttachment.contentType from MedComCoreAttachmentMimeTypes
* payload[attachment].contentAttachment.data MS
* payload[attachment].contentAttachment.data ^definition = "Shall be present and contain the base64 encoded content if the attachment is an attached document"
* payload[attachment].contentAttachment.url MS
* payload[attachment].contentAttachment.url ^definition = "Shall be present if the attachment is a link to a document or a web page"
* payload[attachment].contentAttachment.title 1.. MS
* payload[attachment].contentAttachment.creation MS
* payload[attachment].contentAttachment.creation ^definition = "Shall be present if the creation time of the attachment will be relevant to a recipient"


Alias: $EventStatus = http://hl7.org/fhir/event-status
Alias: $CategoryCodes = http://medcom.dk/fhir/core/CodeSystem/medcom-careCommunication-categoryCodes

Instance: CareCommunicationContent
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content"
Description: "Content of care communication message. Valid only if used in a bundle (message)."
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(EncounterWithLPR3Identifier)
* sent = 2020-09-28T12:34:56Z
* payload.contentString = "The burns are quite severe"
* payload.extension[date].valueDateTime = 2020-09-28
* payload.extension[author].valueReference = Reference(MichaelBurns)

Instance: CareCommunicationReplyContent
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content"
Description: "Content of care communication message. Valid only if used in a bundle (message)."
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(EncounterWithLPR3Identifier)
* sent = 2020-09-30T10:22:11Z
* payload[0].contentString = "The burns are quite severe"
* payload[0].extension[date].valueDateTime = 2020-09-28
* payload[0].extension[author].valueReference = Reference(MichaelBurns)
* payload[1].contentString = "Keep the patient under observation for at least 5 days"
* payload[1].extension[date].valueDateTime = 2020-09-30
* payload[1].extension[author].valueReference = Reference(EmmaWaters)


Instance: MichaelBurns
InstanceOf: Practitioner
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: EmmaWaters
InstanceOf: Practitioner
Description: "Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"