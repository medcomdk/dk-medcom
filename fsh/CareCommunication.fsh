Profile:        CareCommunication
Parent:         Communication
Id:             medcom-care-communication
Title:          "Care Communication"
Description:    "Care related communication between two or more parties in Danish healthcare"
* category 1..1 MS
* category from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-clinicalEmailCategoryCodes
* priority MS
* priority ^definition = "The priority of the message shall be present if known by the sender. It is recommended to use Routine or Urgent. The recipient shall interpret absense of priority as Routine, and it is allowed to interpret ASAP and STAT as Urgent."
* subject 1.. MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* topic MS
* topic ^definition = "Description of the purpose/content, similar to a subject line in an email. Shall be present if topic of the message is known."
* encounter 1.. MS
* sent 1.. MS
* recipient 0.. MS
* recipient only Reference(Organization or PractitionerRole)
* recipient ^type.aggregation = #bundled
* recipient ^definition = "The recipient of the message shall be present in case the recipient is given as a practioner role or a more specific organization than the recipient of the message. E.g. a unit in a hospital, a named general practitioner or a home care group in a municipality."
* sender 0.. MS
* sender only Reference(Organization or PractitionerRole)
* sender ^type.aggregation = #bundled
* sender ^definition = "The sender of the message shall be present in case the recipient is given as a practioner role or a more specific organization than the sender of the message. E.g. a unit in a hospital, a named general practitioner or a home care group in a municipality."
* payload 1..
* payload ^slicing.discriminator.type = #type
* payload ^slicing.discriminator.path = "content[x]"
* payload ^slicing.rules = #open
* payload ^slicing.ordered = true
* payload contains
    string 1.. and
    attachment 0..
* payload[string] 1.. MS
* payload[string].content[x] only string
* payload[string].content[x] MS
* payload[string].extension contains medcom-core-date-time-extension named date 1..1 MS
* payload[string].extension contains medcom-core-author-extension named author 1..1 MS
* payload[attachment] 0.. MS
* payload[attachment] ^definition = "The payload of the message shall contain all links or content attached to the message."
* payload[attachment].content[x] only Attachment
* payload[attachment].content[x] MS
* payload[attachment].contentAttachment 1.. MS
* payload[attachment].contentAttachment.contentType MS
* payload[attachment].contentAttachment.contentType ^definition = "The content type shall be present in case the content is provided as an attached document (data) or links to a document."
* payload[attachment].contentAttachment.contentType from http://medcom.dk/fhir/medcom-core/ValueSet/medcom-attachment-mimetypes
* payload[attachment].contentAttachment.data MS
* payload[attachment].contentAttachment.data ^definition = "Shall be present and contain the base64 encoded content if the attachment is an attached document"
* payload[attachment].contentAttachment.url MS
* payload[attachment].contentAttachment.url ^definition = "Shall be present if the attachment is a link to a document or a web page"
* payload[attachment].contentAttachment.title 1.. MS
* payload[attachment].contentAttachment.creation MS
* payload[attachment].contentAttachment.creation ^definition = "Shall be present if the creation time of the attachment will be relevant to a recipient"