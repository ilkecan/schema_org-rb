# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Organization
      include Thing

      def self.schema_property_definitions
        {
          accepted_payment_method: {
            schema_name: "acceptedPaymentMethod",
            schema_url: "https://schema.org/acceptedPaymentMethod",
            comment_lines: ["The payment method(s) that are accepted in general by an organization, or for some specific demand or offer."].freeze,
            ranges: ["LoanOrCredit", "PaymentMethod", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          actionable_feedback_policy: {
            schema_name: "actionableFeedbackPolicy",
            schema_url: "https://schema.org/actionableFeedbackPolicy",
            comment_lines: ["For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          address: {
            schema_name: "address",
            schema_url: "https://schema.org/address",
            comment_lines: ["Physical address of the item."].freeze,
            ranges: ["PostalAddress", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          agent_interaction_statistic: {
            schema_name: "agentInteractionStatistic",
            schema_url: "https://schema.org/agentInteractionStatistic",
            comment_lines: ["The number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService)."].freeze,
            ranges: ["InteractionCounter"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          aggregate_rating: {
            schema_name: "aggregateRating",
            schema_url: "https://schema.org/aggregateRating",
            comment_lines: ["The overall rating, based on a collection of reviews or ratings, of the item."].freeze,
            ranges: ["AggregateRating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          alumni: {
            schema_name: "alumni",
            schema_url: "https://schema.org/alumni",
            comment_lines: ["Alumni of an organization."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "alumniOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          area_served: {
            schema_name: "areaServed",
            schema_url: "https://schema.org/areaServed",
            comment_lines: ["The geographic area where a service or offered item is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "serviceArea"
          }.freeze,
          award: {
            schema_name: "award",
            schema_url: "https://schema.org/award",
            comment_lines: ["An award won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "awards"
          }.freeze,
          awards: {
            schema_name: "awards",
            schema_url: "https://schema.org/awards",
            comment_lines: ["Awards won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "award",
            supersedes: nil
          }.freeze,
          brand: {
            schema_name: "brand",
            schema_url: "https://schema.org/brand",
            comment_lines: ["The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."].freeze,
            ranges: ["Brand", "Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          company_registration: {
            schema_name: "companyRegistration",
            schema_url: "https://schema.org/companyRegistration",
            comment_lines: ["The official registration information of a business including the organization that issued it such as Company House or Chamber of Commerce in form of a Certification."].freeze,
            ranges: ["Certification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contact_point: {
            schema_name: "contactPoint",
            schema_url: "https://schema.org/contactPoint",
            comment_lines: ["A contact point for a person or organization."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "contactPoints"
          }.freeze,
          contact_points: {
            schema_name: "contactPoints",
            schema_url: "https://schema.org/contactPoints",
            comment_lines: ["A contact point for a person or organization."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "contactPoint",
            supersedes: nil
          }.freeze,
          corrections_policy: {
            schema_name: "correctionsPolicy",
            schema_url: "https://schema.org/correctionsPolicy",
            comment_lines: ["For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          department: {
            schema_name: "department",
            schema_url: "https://schema.org/department",
            comment_lines: ["A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          dissolution_date: {
            schema_name: "dissolutionDate",
            schema_url: "https://schema.org/dissolutionDate",
            comment_lines: ["The date that this organization was dissolved."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          diversity_policy: {
            schema_name: "diversityPolicy",
            schema_url: "https://schema.org/diversityPolicy",
            comment_lines: ["Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          diversity_staffing_report: {
            schema_name: "diversityStaffingReport",
            schema_url: "https://schema.org/diversityStaffingReport",
            comment_lines: ["For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported."].freeze,
            ranges: ["Article", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duns: {
            schema_name: "duns",
            schema_url: "https://schema.org/duns",
            comment_lines: ["The Dun & Bradstreet DUNS number for identifying an organization or business person."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          email: {
            schema_name: "email",
            schema_url: "https://schema.org/email",
            comment_lines: ["Email address."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          employee: {
            schema_name: "employee",
            schema_url: "https://schema.org/employee",
            comment_lines: ["Someone working for this organization."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "employees"
          }.freeze,
          employees: {
            schema_name: "employees",
            schema_url: "https://schema.org/employees",
            comment_lines: ["People working for this organization."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "employee",
            supersedes: nil
          }.freeze,
          ethics_policy: {
            schema_name: "ethicsPolicy",
            schema_url: "https://schema.org/ethicsPolicy",
            comment_lines: ["Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          event: {
            schema_name: "event",
            schema_url: "https://schema.org/event",
            comment_lines: ["Upcoming or past event associated with this place, organization, or action."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "events"
          }.freeze,
          events: {
            schema_name: "events",
            schema_url: "https://schema.org/events",
            comment_lines: ["Upcoming or past events associated with this place or organization."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "event",
            supersedes: nil
          }.freeze,
          fax_number: {
            schema_name: "faxNumber",
            schema_url: "https://schema.org/faxNumber",
            comment_lines: ["The fax number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          founder: {
            schema_name: "founder",
            schema_url: "https://schema.org/founder",
            comment_lines: ["A person or organization who founded this organization."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "founders"
          }.freeze,
          founders: {
            schema_name: "founders",
            schema_url: "https://schema.org/founders",
            comment_lines: ["A person who founded this organization."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "founder",
            supersedes: nil
          }.freeze,
          founding_date: {
            schema_name: "foundingDate",
            schema_url: "https://schema.org/foundingDate",
            comment_lines: ["The date that this organization was founded."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          founding_location: {
            schema_name: "foundingLocation",
            schema_url: "https://schema.org/foundingLocation",
            comment_lines: ["The place where the Organization was founded."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funder: {
            schema_name: "funder",
            schema_url: "https://schema.org/funder",
            comment_lines: ["A person or organization that supports (sponsors) something through some kind of financial contribution."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funding: {
            schema_name: "funding",
            schema_url: "https://schema.org/funding",
            comment_lines: ["A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."].freeze,
            ranges: ["Grant"].freeze,
            external_ranges: [].freeze,
            inverse_of: "fundedItem",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          global_location_number: {
            schema_name: "globalLocationNumber",
            schema_url: "https://schema.org/globalLocationNumber",
            comment_lines: ["The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_certification: {
            schema_name: "hasCertification",
            schema_url: "https://schema.org/hasCertification",
            comment_lines: ["Certification information about a product, organization, service, place, or person."].freeze,
            ranges: ["Certification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_credential: {
            schema_name: "hasCredential",
            schema_url: "https://schema.org/hasCredential",
            comment_lines: ["A credential awarded to the Person or Organization."].freeze,
            ranges: ["Credential"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_gs1_digital_link: {
            schema_name: "hasGS1DigitalLink",
            schema_url: "https://schema.org/hasGS1DigitalLink",
            comment_lines: ["The <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_member_program: {
            schema_name: "hasMemberProgram",
            schema_url: "https://schema.org/hasMemberProgram",
            comment_lines: ["MemberProgram offered by an Organization, for example an eCommerce merchant or an airline."].freeze,
            ranges: ["MemberProgram"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_merchant_return_policy: {
            schema_name: "hasMerchantReturnPolicy",
            schema_url: "https://schema.org/hasMerchantReturnPolicy",
            comment_lines: ["Specifies a MerchantReturnPolicy that may be applicable."].freeze,
            ranges: ["MerchantReturnPolicy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "hasProductReturnPolicy"
          }.freeze,
          has_offer_catalog: {
            schema_name: "hasOfferCatalog",
            schema_url: "https://schema.org/hasOfferCatalog",
            comment_lines: ["Indicates an OfferCatalog listing for this Organization, Person, or Service."].freeze,
            ranges: ["OfferCatalog"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_pos: {
            schema_name: "hasPOS",
            schema_url: "https://schema.org/hasPOS",
            comment_lines: ["Points-of-Sales operated by the organization or person."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_product_return_policy: {
            schema_name: "hasProductReturnPolicy",
            schema_url: "https://schema.org/hasProductReturnPolicy",
            comment_lines: ["Indicates a ProductReturnPolicy that may be applicable."].freeze,
            ranges: ["ProductReturnPolicy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "hasMerchantReturnPolicy",
            supersedes: nil
          }.freeze,
          has_shipping_service: {
            schema_name: "hasShippingService",
            schema_url: "https://schema.org/hasShippingService",
            comment_lines: ["Specification of a shipping service offered by the organization."].freeze,
            ranges: ["ShippingService"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interaction_statistic: {
            schema_name: "interactionStatistic",
            schema_url: "https://schema.org/interactionStatistic",
            comment_lines: ["The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used."].freeze,
            ranges: ["InteractionCounter"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "interactionCount"
          }.freeze,
          isic_v4: {
            schema_name: "isicV4",
            schema_url: "https://schema.org/isicV4",
            comment_lines: ["The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          iso6523_code: {
            schema_name: "iso6523Code",
            schema_url: "https://schema.org/iso6523Code",
            comment_lines: ["An organization identifier as defined in [ISO 6523(-1)](https://en.wikipedia.org/wiki/ISO/IEC_6523). The identifier should be in the `XXXX:YYYYYY:ZZZ` or `XXXX:YYYYYY`format. Where `XXXX` is a 4 digit _ICD_ (International Code Designator), `YYYYYY` is an _OID_ (Organization Identifier) with all formatting characters (dots, dashes, spaces) removed with a maximal length of 35 characters, and `ZZZ` is an optional OPI (Organization Part Identifier) with a maximum length of 35 characters. The various components (ICD, OID, OPI) are joined with a colon character (ASCII `0x3a`). Note that many existing organization identifiers defined as attributes like [leiCode](https://schema.org/leiCode) (`0199`), [duns](https://schema.org/duns) (`0060`) or [GLN](https://schema.org/globalLocationNumber) (`0088`) can be expressed using ISO-6523. If possible, ISO-6523 codes should be preferred to populating [vatID](https://schema.org/vatID) or [taxID](https://schema.org/taxID), as ISO identifiers are less ambiguous."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          keywords: {
            schema_name: "keywords",
            schema_url: "https://schema.org/keywords",
            comment_lines: ["Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          knows_about: {
            schema_name: "knowsAbout",
            schema_url: "https://schema.org/knowsAbout",
            comment_lines: ["Of a [[Person]], and less typically of an [[Organization]], to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or [[JobPosting]] descriptions."].freeze,
            ranges: ["Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          knows_language: {
            schema_name: "knowsLanguage",
            schema_url: "https://schema.org/knowsLanguage",
            comment_lines: ["Of a [[Person]], and less typically of an [[Organization]], to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47)."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legal_address: {
            schema_name: "legalAddress",
            schema_url: "https://schema.org/legalAddress",
            comment_lines: ["The legal address of an organization which acts as the officially registered address used for legal and tax purposes. The legal address can be different from the place of operations of a business and other addresses can be part of an organization."].freeze,
            ranges: ["PostalAddress"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legal_name: {
            schema_name: "legalName",
            schema_url: "https://schema.org/legalName",
            comment_lines: ["The official name of the organization, e.g. the registered company name."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legal_representative: {
            schema_name: "legalRepresentative",
            schema_url: "https://schema.org/legalRepresentative",
            comment_lines: ["One or multiple persons who represent this organization legally such as CEO or sole administrator."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lei_code: {
            schema_name: "leiCode",
            schema_url: "https://schema.org/leiCode",
            comment_lines: ["An organization identifier that uniquely identifies a legal entity as defined in ISO 17442."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          location: {
            schema_name: "location",
            schema_url: "https://schema.org/location",
            comment_lines: ["The location of, for example, where an event is happening, where an organization is located, or where an action takes place."].freeze,
            ranges: ["Place", "PostalAddress", "Text", "VirtualLocation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          logo: {
            schema_name: "logo",
            schema_url: "https://schema.org/logo",
            comment_lines: ["An associated logo."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          makes_offer: {
            schema_name: "makesOffer",
            schema_url: "https://schema.org/makesOffer",
            comment_lines: ["A pointer to products or services offered by the organization or person."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "offeredBy",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          member: {
            schema_name: "member",
            schema_url: "https://schema.org/member",
            comment_lines: ["A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "memberOf",
            superseded_by: nil,
            supersedes: "musicGroupMember"
          }.freeze,
          member_of: {
            schema_name: "memberOf",
            schema_url: "https://schema.org/memberOf",
            comment_lines: ["An Organization (or ProgramMembership) to which this Person or Organization belongs."].freeze,
            ranges: ["MemberProgramTier", "Organization", "ProgramMembership"].freeze,
            external_ranges: [].freeze,
            inverse_of: "member",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          members: {
            schema_name: "members",
            schema_url: "https://schema.org/members",
            comment_lines: ["A member of this organization."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "member",
            supersedes: nil
          }.freeze,
          naics: {
            schema_name: "naics",
            schema_url: "https://schema.org/naics",
            comment_lines: ["The North American Industry Classification System (NAICS) code for a particular organization or business person."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          nonprofit_status: {
            schema_name: "nonprofitStatus",
            schema_url: "https://schema.org/nonprofitStatus",
            comment_lines: ["nonprofitStatus indicates the legal status of a non-profit organization in its primary place of business."].freeze,
            ranges: ["NonprofitType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_employees: {
            schema_name: "numberOfEmployees",
            schema_url: "https://schema.org/numberOfEmployees",
            comment_lines: ["The number of employees in an organization, e.g. business."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ownership_funding_info: {
            schema_name: "ownershipFundingInfo",
            schema_url: "https://schema.org/ownershipFundingInfo",
            comment_lines: ["For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable."].freeze,
            ranges: ["AboutPage", "CreativeWork", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          owns: {
            schema_name: "owns",
            schema_url: "https://schema.org/owns",
            comment_lines: ["Things owned by the organization or person."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: "owner",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          parent_organization: {
            schema_name: "parentOrganization",
            schema_url: "https://schema.org/parentOrganization",
            comment_lines: ["The larger organization that this organization is a [[subOrganization]] of, if any."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subOrganization",
            superseded_by: nil,
            supersedes: "branchOf"
          }.freeze,
          publishing_principles: {
            schema_name: "publishingPrinciples",
            schema_url: "https://schema.org/publishingPrinciples",
            comment_lines: ["The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].", "", "While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review: {
            schema_name: "review",
            schema_url: "https://schema.org/review",
            comment_lines: ["A review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "reviews"
          }.freeze,
          reviews: {
            schema_name: "reviews",
            schema_url: "https://schema.org/reviews",
            comment_lines: ["Review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "review",
            supersedes: nil
          }.freeze,
          seeks: {
            schema_name: "seeks",
            schema_url: "https://schema.org/seeks",
            comment_lines: ["A pointer to products or services sought by the organization or person (demand)."].freeze,
            ranges: ["Demand"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_area: {
            schema_name: "serviceArea",
            schema_url: "https://schema.org/serviceArea",
            comment_lines: ["The geographic area where the service is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "areaServed",
            supersedes: "area"
          }.freeze,
          skills: {
            schema_name: "skills",
            schema_url: "https://schema.org/skills",
            comment_lines: ["A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          slogan: {
            schema_name: "slogan",
            schema_url: "https://schema.org/slogan",
            comment_lines: ["A slogan or motto associated with the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sponsor: {
            schema_name: "sponsor",
            schema_url: "https://schema.org/sponsor",
            comment_lines: ["A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sub_organization: {
            schema_name: "subOrganization",
            schema_url: "https://schema.org/subOrganization",
            comment_lines: ["A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: "parentOrganization",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tax_id: {
            schema_name: "taxID",
            schema_url: "https://schema.org/taxID",
            comment_lines: ["The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          telephone: {
            schema_name: "telephone",
            schema_url: "https://schema.org/telephone",
            comment_lines: ["The telephone number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unnamed_sources_policy: {
            schema_name: "unnamedSourcesPolicy",
            schema_url: "https://schema.org/unnamedSourcesPolicy",
            comment_lines: ["For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vat_id: {
            schema_name: "vatID",
            schema_url: "https://schema.org/vatID",
            comment_lines: ["The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
      def accepted_payment_method
        read_property(:accepted_payment_method)
      end

      # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
      def accepted_payment_method=(value)
        write_property(:accepted_payment_method, value)
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.
      def actionable_feedback_policy
        read_property(:actionable_feedback_policy)
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.
      def actionable_feedback_policy=(value)
        write_property(:actionable_feedback_policy, value)
      end

      # Physical address of the item.
      def address
        read_property(:address)
      end

      # Physical address of the item.
      def address=(value)
        write_property(:address, value)
      end

      # The number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService).
      def agent_interaction_statistic
        read_property(:agent_interaction_statistic)
      end

      # The number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService).
      def agent_interaction_statistic=(value)
        write_property(:agent_interaction_statistic, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # Alumni of an organization.
      # Inverse-property: `alumniOf`.
      def alumni
        read_property(:alumni)
      end

      # Alumni of an organization.
      # Inverse-property: `alumniOf`.
      def alumni=(value)
        write_property(:alumni, value)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served
        read_property(:area_served)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served=(value)
        write_property(:area_served, value)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award
        read_property(:award)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award=(value)
        write_property(:award, value)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards
        read_property(:awards)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards=(value)
        write_property(:awards, value)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand
        read_property(:brand)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand=(value)
        write_property(:brand, value)
      end

      # The official registration information of a business including the organization that issued it such as Company House or Chamber of Commerce in form of a Certification.
      def company_registration
        read_property(:company_registration)
      end

      # The official registration information of a business including the organization that issued it such as Company House or Chamber of Commerce in form of a Certification.
      def company_registration=(value)
        write_property(:company_registration, value)
      end

      # A contact point for a person or organization.
      # Supersedes `contactPoints`.
      def contact_point
        read_property(:contact_point)
      end

      # A contact point for a person or organization.
      # Supersedes `contactPoints`.
      def contact_point=(value)
        write_property(:contact_point, value)
      end

      # A contact point for a person or organization.
      # Superseded by `contactPoint`.
      def contact_points
        read_property(:contact_points)
      end

      # A contact point for a person or organization.
      # Superseded by `contactPoint`.
      def contact_points=(value)
        write_property(:contact_points, value)
      end

      # For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors.
      def corrections_policy
        read_property(:corrections_policy)
      end

      # For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors.
      def corrections_policy=(value)
        write_property(:corrections_policy, value)
      end

      # A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe.
      def department
        read_property(:department)
      end

      # A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe.
      def department=(value)
        write_property(:department, value)
      end

      # The date that this organization was dissolved.
      def dissolution_date
        read_property(:dissolution_date)
      end

      # The date that this organization was dissolved.
      def dissolution_date=(value)
        write_property(:dissolution_date, value)
      end

      # Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data.
      def diversity_policy
        read_property(:diversity_policy)
      end

      # Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data.
      def diversity_policy=(value)
        write_property(:diversity_policy, value)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.
      def diversity_staffing_report
        read_property(:diversity_staffing_report)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.
      def diversity_staffing_report=(value)
        write_property(:diversity_staffing_report, value)
      end

      # The Dun & Bradstreet DUNS number for identifying an organization or business person.
      def duns
        read_property(:duns)
      end

      # The Dun & Bradstreet DUNS number for identifying an organization or business person.
      def duns=(value)
        write_property(:duns, value)
      end

      # Email address.
      def email
        read_property(:email)
      end

      # Email address.
      def email=(value)
        write_property(:email, value)
      end

      # Someone working for this organization.
      # Supersedes `employees`.
      def employee
        read_property(:employee)
      end

      # Someone working for this organization.
      # Supersedes `employees`.
      def employee=(value)
        write_property(:employee, value)
      end

      # People working for this organization.
      # Superseded by `employee`.
      def employees
        read_property(:employees)
      end

      # People working for this organization.
      # Superseded by `employee`.
      def employees=(value)
        write_property(:employees, value)
      end

      # Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.
      def ethics_policy
        read_property(:ethics_policy)
      end

      # Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.
      def ethics_policy=(value)
        write_property(:ethics_policy, value)
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event
        read_property(:event)
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event=(value)
        write_property(:event, value)
      end

      # Upcoming or past events associated with this place or organization.
      # Superseded by `event`.
      def events
        read_property(:events)
      end

      # Upcoming or past events associated with this place or organization.
      # Superseded by `event`.
      def events=(value)
        write_property(:events, value)
      end

      # The fax number.
      def fax_number
        read_property(:fax_number)
      end

      # The fax number.
      def fax_number=(value)
        write_property(:fax_number, value)
      end

      # A person or organization who founded this organization.
      # Supersedes `founders`.
      def founder
        read_property(:founder)
      end

      # A person or organization who founded this organization.
      # Supersedes `founders`.
      def founder=(value)
        write_property(:founder, value)
      end

      # A person who founded this organization.
      # Superseded by `founder`.
      def founders
        read_property(:founders)
      end

      # A person who founded this organization.
      # Superseded by `founder`.
      def founders=(value)
        write_property(:founders, value)
      end

      # The date that this organization was founded.
      def founding_date
        read_property(:founding_date)
      end

      # The date that this organization was founded.
      def founding_date=(value)
        write_property(:founding_date, value)
      end

      # The place where the Organization was founded.
      def founding_location
        read_property(:founding_location)
      end

      # The place where the Organization was founded.
      def founding_location=(value)
        write_property(:founding_location, value)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder
        read_property(:funder)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder=(value)
        write_property(:funder, value)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding
        read_property(:funding)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding=(value)
        write_property(:funding, value)
      end

      # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
      def global_location_number
        read_property(:global_location_number)
      end

      # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
      def global_location_number=(value)
        write_property(:global_location_number, value)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification
        read_property(:has_certification)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification=(value)
        write_property(:has_certification, value)
      end

      # A credential awarded to the Person or Organization.
      def has_credential
        read_property(:has_credential)
      end

      # A credential awarded to the Person or Organization.
      def has_credential=(value)
        write_property(:has_credential, value)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link
        read_property(:has_gs1_digital_link)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link=(value)
        write_property(:has_gs1_digital_link, value)
      end

      # MemberProgram offered by an Organization, for example an eCommerce merchant or an airline.
      def has_member_program
        read_property(:has_member_program)
      end

      # MemberProgram offered by an Organization, for example an eCommerce merchant or an airline.
      def has_member_program=(value)
        write_property(:has_member_program, value)
      end

      # Specifies a MerchantReturnPolicy that may be applicable.
      # Supersedes `hasProductReturnPolicy`.
      def has_merchant_return_policy
        read_property(:has_merchant_return_policy)
      end

      # Specifies a MerchantReturnPolicy that may be applicable.
      # Supersedes `hasProductReturnPolicy`.
      def has_merchant_return_policy=(value)
        write_property(:has_merchant_return_policy, value)
      end

      # Indicates an OfferCatalog listing for this Organization, Person, or Service.
      def has_offer_catalog
        read_property(:has_offer_catalog)
      end

      # Indicates an OfferCatalog listing for this Organization, Person, or Service.
      def has_offer_catalog=(value)
        write_property(:has_offer_catalog, value)
      end

      # Points-of-Sales operated by the organization or person.
      def has_pos
        read_property(:has_pos)
      end

      # Points-of-Sales operated by the organization or person.
      def has_pos=(value)
        write_property(:has_pos, value)
      end

      # Indicates a ProductReturnPolicy that may be applicable.
      # Superseded by `hasMerchantReturnPolicy`.
      def has_product_return_policy
        read_property(:has_product_return_policy)
      end

      # Indicates a ProductReturnPolicy that may be applicable.
      # Superseded by `hasMerchantReturnPolicy`.
      def has_product_return_policy=(value)
        write_property(:has_product_return_policy, value)
      end

      # Specification of a shipping service offered by the organization.
      def has_shipping_service
        read_property(:has_shipping_service)
      end

      # Specification of a shipping service offered by the organization.
      def has_shipping_service=(value)
        write_property(:has_shipping_service, value)
      end

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.
      # Supersedes `interactionCount`.
      def interaction_statistic
        read_property(:interaction_statistic)
      end

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.
      # Supersedes `interactionCount`.
      def interaction_statistic=(value)
        write_property(:interaction_statistic, value)
      end

      # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
      def isic_v4
        read_property(:isic_v4)
      end

      # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
      def isic_v4=(value)
        write_property(:isic_v4, value)
      end

      # An organization identifier as defined in [ISO 6523(-1)](https://en.wikipedia.org/wiki/ISO/IEC_6523). The identifier should be in the `XXXX:YYYYYY:ZZZ` or `XXXX:YYYYYY`format. Where `XXXX` is a 4 digit _ICD_ (International Code Designator), `YYYYYY` is an _OID_ (Organization Identifier) with all formatting characters (dots, dashes, spaces) removed with a maximal length of 35 characters, and `ZZZ` is an optional OPI (Organization Part Identifier) with a maximum length of 35 characters. The various components (ICD, OID, OPI) are joined with a colon character (ASCII `0x3a`). Note that many existing organization identifiers defined as attributes like [leiCode](https://schema.org/leiCode) (`0199`), [duns](https://schema.org/duns) (`0060`) or [GLN](https://schema.org/globalLocationNumber) (`0088`) can be expressed using ISO-6523. If possible, ISO-6523 codes should be preferred to populating [vatID](https://schema.org/vatID) or [taxID](https://schema.org/taxID), as ISO identifiers are less ambiguous.
      def iso6523_code
        read_property(:iso6523_code)
      end

      # An organization identifier as defined in [ISO 6523(-1)](https://en.wikipedia.org/wiki/ISO/IEC_6523). The identifier should be in the `XXXX:YYYYYY:ZZZ` or `XXXX:YYYYYY`format. Where `XXXX` is a 4 digit _ICD_ (International Code Designator), `YYYYYY` is an _OID_ (Organization Identifier) with all formatting characters (dots, dashes, spaces) removed with a maximal length of 35 characters, and `ZZZ` is an optional OPI (Organization Part Identifier) with a maximum length of 35 characters. The various components (ICD, OID, OPI) are joined with a colon character (ASCII `0x3a`). Note that many existing organization identifiers defined as attributes like [leiCode](https://schema.org/leiCode) (`0199`), [duns](https://schema.org/duns) (`0060`) or [GLN](https://schema.org/globalLocationNumber) (`0088`) can be expressed using ISO-6523. If possible, ISO-6523 codes should be preferred to populating [vatID](https://schema.org/vatID) or [taxID](https://schema.org/taxID), as ISO identifiers are less ambiguous.
      def iso6523_code=(value)
        write_property(:iso6523_code, value)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords
        read_property(:keywords)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords=(value)
        write_property(:keywords, value)
      end

      # Of a [[Person]], and less typically of an [[Organization]], to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or [[JobPosting]] descriptions.
      def knows_about
        read_property(:knows_about)
      end

      # Of a [[Person]], and less typically of an [[Organization]], to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or [[JobPosting]] descriptions.
      def knows_about=(value)
        write_property(:knows_about, value)
      end

      # Of a [[Person]], and less typically of an [[Organization]], to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47).
      def knows_language
        read_property(:knows_language)
      end

      # Of a [[Person]], and less typically of an [[Organization]], to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47).
      def knows_language=(value)
        write_property(:knows_language, value)
      end

      # The legal address of an organization which acts as the officially registered address used for legal and tax purposes. The legal address can be different from the place of operations of a business and other addresses can be part of an organization.
      def legal_address
        read_property(:legal_address)
      end

      # The legal address of an organization which acts as the officially registered address used for legal and tax purposes. The legal address can be different from the place of operations of a business and other addresses can be part of an organization.
      def legal_address=(value)
        write_property(:legal_address, value)
      end

      # The official name of the organization, e.g. the registered company name.
      def legal_name
        read_property(:legal_name)
      end

      # The official name of the organization, e.g. the registered company name.
      def legal_name=(value)
        write_property(:legal_name, value)
      end

      # One or multiple persons who represent this organization legally such as CEO or sole administrator.
      def legal_representative
        read_property(:legal_representative)
      end

      # One or multiple persons who represent this organization legally such as CEO or sole administrator.
      def legal_representative=(value)
        write_property(:legal_representative, value)
      end

      # An organization identifier that uniquely identifies a legal entity as defined in ISO 17442.
      def lei_code
        read_property(:lei_code)
      end

      # An organization identifier that uniquely identifies a legal entity as defined in ISO 17442.
      def lei_code=(value)
        write_property(:lei_code, value)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location
        read_property(:location)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location=(value)
        write_property(:location, value)
      end

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
      end

      # A pointer to products or services offered by the organization or person.
      # Inverse-property: `offeredBy`.
      def makes_offer
        read_property(:makes_offer)
      end

      # A pointer to products or services offered by the organization or person.
      # Inverse-property: `offeredBy`.
      def makes_offer=(value)
        write_property(:makes_offer, value)
      end

      # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
      # Supersedes `musicGroupMember`.
      # Inverse-property: `memberOf`.
      def member
        read_property(:member)
      end

      # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
      # Supersedes `musicGroupMember`.
      # Inverse-property: `memberOf`.
      def member=(value)
        write_property(:member, value)
      end

      # An Organization (or ProgramMembership) to which this Person or Organization belongs.
      # Inverse-property: `member`.
      def member_of
        read_property(:member_of)
      end

      # An Organization (or ProgramMembership) to which this Person or Organization belongs.
      # Inverse-property: `member`.
      def member_of=(value)
        write_property(:member_of, value)
      end

      # A member of this organization.
      # Superseded by `member`.
      def members
        read_property(:members)
      end

      # A member of this organization.
      # Superseded by `member`.
      def members=(value)
        write_property(:members, value)
      end

      # The North American Industry Classification System (NAICS) code for a particular organization or business person.
      def naics
        read_property(:naics)
      end

      # The North American Industry Classification System (NAICS) code for a particular organization or business person.
      def naics=(value)
        write_property(:naics, value)
      end

      # nonprofitStatus indicates the legal status of a non-profit organization in its primary place of business.
      def nonprofit_status
        read_property(:nonprofit_status)
      end

      # nonprofitStatus indicates the legal status of a non-profit organization in its primary place of business.
      def nonprofit_status=(value)
        write_property(:nonprofit_status, value)
      end

      # The number of employees in an organization, e.g. business.
      def number_of_employees
        read_property(:number_of_employees)
      end

      # The number of employees in an organization, e.g. business.
      def number_of_employees=(value)
        write_property(:number_of_employees, value)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.
      def ownership_funding_info
        read_property(:ownership_funding_info)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.
      def ownership_funding_info=(value)
        write_property(:ownership_funding_info, value)
      end

      # Things owned by the organization or person.
      # Inverse-property: `owner`.
      def owns
        read_property(:owns)
      end

      # Things owned by the organization or person.
      # Inverse-property: `owner`.
      def owns=(value)
        write_property(:owns, value)
      end

      # The larger organization that this organization is a [[subOrganization]] of, if any.
      # Supersedes `branchOf`.
      # Inverse-property: `subOrganization`.
      def parent_organization
        read_property(:parent_organization)
      end

      # The larger organization that this organization is a [[subOrganization]] of, if any.
      # Supersedes `branchOf`.
      # Inverse-property: `subOrganization`.
      def parent_organization=(value)
        write_property(:parent_organization, value)
      end

      # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].
      #
      # While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
      def publishing_principles
        read_property(:publishing_principles)
      end

      # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].
      #
      # While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
      def publishing_principles=(value)
        write_property(:publishing_principles, value)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review
        read_property(:review)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review=(value)
        write_property(:review, value)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews
        read_property(:reviews)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews=(value)
        write_property(:reviews, value)
      end

      # A pointer to products or services sought by the organization or person (demand).
      def seeks
        read_property(:seeks)
      end

      # A pointer to products or services sought by the organization or person (demand).
      def seeks=(value)
        write_property(:seeks, value)
      end

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area
        read_property(:service_area)
      end

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area=(value)
        write_property(:service_area, value)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills
        read_property(:skills)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills=(value)
        write_property(:skills, value)
      end

      # A slogan or motto associated with the item.
      def slogan
        read_property(:slogan)
      end

      # A slogan or motto associated with the item.
      def slogan=(value)
        write_property(:slogan, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end

      # A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property.
      # Inverse-property: `parentOrganization`.
      def sub_organization
        read_property(:sub_organization)
      end

      # A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property.
      # Inverse-property: `parentOrganization`.
      def sub_organization=(value)
        write_property(:sub_organization, value)
      end

      # The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
      def tax_id
        read_property(:tax_id)
      end

      # The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
      def tax_id=(value)
        write_property(:tax_id, value)
      end

      # The telephone number.
      def telephone
        read_property(:telephone)
      end

      # The telephone number.
      def telephone=(value)
        write_property(:telephone, value)
      end

      # For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required.
      def unnamed_sources_policy
        read_property(:unnamed_sources_policy)
      end

      # For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required.
      def unnamed_sources_policy=(value)
        write_property(:unnamed_sources_policy, value)
      end

      # The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix.
      def vat_id
        read_property(:vat_id)
      end

      # The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix.
      def vat_id=(value)
        write_property(:vat_id, value)
      end
    end
  end
end
