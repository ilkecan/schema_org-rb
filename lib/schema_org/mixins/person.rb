# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Person
      include Thing

      def self.schema_property_definitions
        {
          additional_name: {
            schema_name: "additionalName",
            schema_url: "https://schema.org/additionalName",
            comment_lines: ["An additional name for a Person, can be used for a middle name."].freeze,
            ranges: ["Text"].freeze,
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
          affiliation: {
            schema_name: "affiliation",
            schema_url: "https://schema.org/affiliation",
            comment_lines: ["An organization that this person is affiliated with. For example, a school/university, a club, or a team."].freeze,
            ranges: ["Organization"].freeze,
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
          alumni_of: {
            schema_name: "alumniOf",
            schema_url: "https://schema.org/alumniOf",
            comment_lines: ["An organization that the person is an alumni of."].freeze,
            ranges: ["EducationalOrganization", "Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: "alumni",
            superseded_by: nil,
            supersedes: nil
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
          birth_date: {
            schema_name: "birthDate",
            schema_url: "https://schema.org/birthDate",
            comment_lines: ["Date of birth."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          birth_place: {
            schema_name: "birthPlace",
            schema_url: "https://schema.org/birthPlace",
            comment_lines: ["The place where the person was born."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          call_sign: {
            schema_name: "callSign",
            schema_url: "https://schema.org/callSign",
            comment_lines: ["A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          children: {
            schema_name: "children",
            schema_url: "https://schema.org/children",
            comment_lines: ["A child of the person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          colleague: {
            schema_name: "colleague",
            schema_url: "https://schema.org/colleague",
            comment_lines: ["A colleague of the person."].freeze,
            ranges: ["Person", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "colleagues"
          }.freeze,
          colleagues: {
            schema_name: "colleagues",
            schema_url: "https://schema.org/colleagues",
            comment_lines: ["A colleague of the person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "colleague",
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
          death_date: {
            schema_name: "deathDate",
            schema_url: "https://schema.org/deathDate",
            comment_lines: ["Date of death."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          death_place: {
            schema_name: "deathPlace",
            schema_url: "https://schema.org/deathPlace",
            comment_lines: ["The place where the person died."].freeze,
            ranges: ["Place"].freeze,
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
          family_name: {
            schema_name: "familyName",
            schema_url: "https://schema.org/familyName",
            comment_lines: ["Family name. In the U.S., the last name of a Person."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          follows: {
            schema_name: "follows",
            schema_url: "https://schema.org/follows",
            comment_lines: ["The most generic uni-directional social relation."].freeze,
            ranges: ["Person"].freeze,
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
          gender: {
            schema_name: "gender",
            schema_url: "https://schema.org/gender",
            comment_lines: ["Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of \"Mixed\"."].freeze,
            ranges: ["GenderType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          given_name: {
            schema_name: "givenName",
            schema_url: "https://schema.org/givenName",
            comment_lines: ["Given name. In the U.S., the first name of a Person."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
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
          has_occupation: {
            schema_name: "hasOccupation",
            schema_url: "https://schema.org/hasOccupation",
            comment_lines: ["The Person's occupation. For past professions, use Role for expressing dates."].freeze,
            ranges: ["Occupation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          height: {
            schema_name: "height",
            schema_url: "https://schema.org/height",
            comment_lines: ["The height of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          home_location: {
            schema_name: "homeLocation",
            schema_url: "https://schema.org/homeLocation",
            comment_lines: ["A contact location for a person's residence."].freeze,
            ranges: ["ContactPoint", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          honorific_prefix: {
            schema_name: "honorificPrefix",
            schema_url: "https://schema.org/honorificPrefix",
            comment_lines: ["An honorific prefix preceding a Person's name such as Dr/Mrs/Mr."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          honorific_suffix: {
            schema_name: "honorificSuffix",
            schema_url: "https://schema.org/honorificSuffix",
            comment_lines: ["An honorific suffix following a Person's name such as M.D./PhD/MSCSW."].freeze,
            ranges: ["Text"].freeze,
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
          job_title: {
            schema_name: "jobTitle",
            schema_url: "https://schema.org/jobTitle",
            comment_lines: ["The job title of the person (for example, Financial Manager)."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          knows: {
            schema_name: "knows",
            schema_url: "https://schema.org/knows",
            comment_lines: ["The most generic bi-directional social/work relation."].freeze,
            ranges: ["Person"].freeze,
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
          life_event: {
            schema_name: "lifeEvent",
            schema_url: "https://schema.org/lifeEvent",
            comment_lines: ["A life event like baptism, communions, Bar Mitzvahs, Aqiqah, Namakarana, Miyamairi, burial, ...."].freeze,
            ranges: ["Event"].freeze,
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
          nationality: {
            schema_name: "nationality",
            schema_url: "https://schema.org/nationality",
            comment_lines: ["Nationality of the person."].freeze,
            ranges: ["Country"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          net_worth: {
            schema_name: "netWorth",
            schema_url: "https://schema.org/netWorth",
            comment_lines: ["The total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets."].freeze,
            ranges: ["MonetaryAmount", "PriceSpecification"].freeze,
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
          parent: {
            schema_name: "parent",
            schema_url: "https://schema.org/parent",
            comment_lines: ["A parent of this person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "parents"
          }.freeze,
          parents: {
            schema_name: "parents",
            schema_url: "https://schema.org/parents",
            comment_lines: ["A parents of the person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "parent",
            supersedes: nil
          }.freeze,
          performer_in: {
            schema_name: "performerIn",
            schema_url: "https://schema.org/performerIn",
            comment_lines: ["Event that this person is a performer or participant in."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pronouns: {
            schema_name: "pronouns",
            schema_url: "https://schema.org/pronouns",
            comment_lines: ["A short string listing or describing pronouns for a person. Typically the person concerned is the best authority as pronouns are a critical part of personal identity and expression. Publishers and consumers of this information are reminded to treat this data responsibly, take country-specific laws related to gender expression into account, and be wary of out-of-date data and drawing unwarranted inferences about the person being described.", "", "In English, formulations such as \"they/them\", \"she/her\", and \"he/him\" are commonly used online and can also be used here. We do not intend to enumerate all possible micro-syntaxes in all languages. More structured and well-defined external values for pronouns can be referenced using the [[StructuredValue]] or [[DefinedTerm]] values."].freeze,
            ranges: ["DefinedTerm", "StructuredValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          related_to: {
            schema_name: "relatedTo",
            schema_url: "https://schema.org/relatedTo",
            comment_lines: ["The most generic familial relation."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          sibling: {
            schema_name: "sibling",
            schema_url: "https://schema.org/sibling",
            comment_lines: ["A sibling of the person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "siblings"
          }.freeze,
          siblings: {
            schema_name: "siblings",
            schema_url: "https://schema.org/siblings",
            comment_lines: ["A sibling of the person."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "sibling",
            supersedes: nil
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
          spouse: {
            schema_name: "spouse",
            schema_url: "https://schema.org/spouse",
            comment_lines: ["The person's spouse."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
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
          vat_id: {
            schema_name: "vatID",
            schema_url: "https://schema.org/vatID",
            comment_lines: ["The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          weight: {
            schema_name: "weight",
            schema_url: "https://schema.org/weight",
            comment_lines: ["The weight of the product or person."].freeze,
            ranges: ["Mass", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_location: {
            schema_name: "workLocation",
            schema_url: "https://schema.org/workLocation",
            comment_lines: ["A contact location for a person's place of work."].freeze,
            ranges: ["ContactPoint", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          works_for: {
            schema_name: "worksFor",
            schema_url: "https://schema.org/worksFor",
            comment_lines: ["Organizations that the person works for."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An additional name for a Person, can be used for a middle name.
      def additional_name
        read_property(:additional_name)
      end

      # An additional name for a Person, can be used for a middle name.
      def additional_name=(value)
        write_property(:additional_name, value)
      end

      # Physical address of the item.
      def address
        read_property(:address)
      end

      # Physical address of the item.
      def address=(value)
        write_property(:address, value)
      end

      # An organization that this person is affiliated with. For example, a school/university, a club, or a team.
      def affiliation
        read_property(:affiliation)
      end

      # An organization that this person is affiliated with. For example, a school/university, a club, or a team.
      def affiliation=(value)
        write_property(:affiliation, value)
      end

      # The number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService).
      def agent_interaction_statistic
        read_property(:agent_interaction_statistic)
      end

      # The number of completed interactions for this entity, in a particular role (the 'agent'), in a particular action (indicated in the statistic), and in a particular context (i.e. interactionService).
      def agent_interaction_statistic=(value)
        write_property(:agent_interaction_statistic, value)
      end

      # An organization that the person is an alumni of.
      # Inverse-property: `alumni`.
      def alumni_of
        read_property(:alumni_of)
      end

      # An organization that the person is an alumni of.
      # Inverse-property: `alumni`.
      def alumni_of=(value)
        write_property(:alumni_of, value)
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

      # Date of birth.
      def birth_date
        read_property(:birth_date)
      end

      # Date of birth.
      def birth_date=(value)
        write_property(:birth_date, value)
      end

      # The place where the person was born.
      def birth_place
        read_property(:birth_place)
      end

      # The place where the person was born.
      def birth_place=(value)
        write_property(:birth_place, value)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand
        read_property(:brand)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand=(value)
        write_property(:brand, value)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign
        read_property(:call_sign)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign=(value)
        write_property(:call_sign, value)
      end

      # A child of the person.
      def children
        read_property(:children)
      end

      # A child of the person.
      def children=(value)
        write_property(:children, value)
      end

      # A colleague of the person.
      # Supersedes `colleagues`.
      def colleague
        read_property(:colleague)
      end

      # A colleague of the person.
      # Supersedes `colleagues`.
      def colleague=(value)
        write_property(:colleague, value)
      end

      # A colleague of the person.
      # Superseded by `colleague`.
      def colleagues
        read_property(:colleagues)
      end

      # A colleague of the person.
      # Superseded by `colleague`.
      def colleagues=(value)
        write_property(:colleagues, value)
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

      # Date of death.
      def death_date
        read_property(:death_date)
      end

      # Date of death.
      def death_date=(value)
        write_property(:death_date, value)
      end

      # The place where the person died.
      def death_place
        read_property(:death_place)
      end

      # The place where the person died.
      def death_place=(value)
        write_property(:death_place, value)
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

      # Family name. In the U.S., the last name of a Person.
      def family_name
        read_property(:family_name)
      end

      # Family name. In the U.S., the last name of a Person.
      def family_name=(value)
        write_property(:family_name, value)
      end

      # The fax number.
      def fax_number
        read_property(:fax_number)
      end

      # The fax number.
      def fax_number=(value)
        write_property(:fax_number, value)
      end

      # The most generic uni-directional social relation.
      def follows
        read_property(:follows)
      end

      # The most generic uni-directional social relation.
      def follows=(value)
        write_property(:follows, value)
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

      # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
      def gender
        read_property(:gender)
      end

      # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
      def gender=(value)
        write_property(:gender, value)
      end

      # Given name. In the U.S., the first name of a Person.
      def given_name
        read_property(:given_name)
      end

      # Given name. In the U.S., the first name of a Person.
      def given_name=(value)
        write_property(:given_name, value)
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

      # The Person's occupation. For past professions, use Role for expressing dates.
      def has_occupation
        read_property(:has_occupation)
      end

      # The Person's occupation. For past professions, use Role for expressing dates.
      def has_occupation=(value)
        write_property(:has_occupation, value)
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

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
      end

      # A contact location for a person's residence.
      def home_location
        read_property(:home_location)
      end

      # A contact location for a person's residence.
      def home_location=(value)
        write_property(:home_location, value)
      end

      # An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
      def honorific_prefix
        read_property(:honorific_prefix)
      end

      # An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
      def honorific_prefix=(value)
        write_property(:honorific_prefix, value)
      end

      # An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
      def honorific_suffix
        read_property(:honorific_suffix)
      end

      # An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
      def honorific_suffix=(value)
        write_property(:honorific_suffix, value)
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

      # The job title of the person (for example, Financial Manager).
      def job_title
        read_property(:job_title)
      end

      # The job title of the person (for example, Financial Manager).
      def job_title=(value)
        write_property(:job_title, value)
      end

      # The most generic bi-directional social/work relation.
      def knows
        read_property(:knows)
      end

      # The most generic bi-directional social/work relation.
      def knows=(value)
        write_property(:knows, value)
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

      # A life event like baptism, communions, Bar Mitzvahs, Aqiqah, Namakarana, Miyamairi, burial, ....
      def life_event
        read_property(:life_event)
      end

      # A life event like baptism, communions, Bar Mitzvahs, Aqiqah, Namakarana, Miyamairi, burial, ....
      def life_event=(value)
        write_property(:life_event, value)
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

      # The North American Industry Classification System (NAICS) code for a particular organization or business person.
      def naics
        read_property(:naics)
      end

      # The North American Industry Classification System (NAICS) code for a particular organization or business person.
      def naics=(value)
        write_property(:naics, value)
      end

      # Nationality of the person.
      def nationality
        read_property(:nationality)
      end

      # Nationality of the person.
      def nationality=(value)
        write_property(:nationality, value)
      end

      # The total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets.
      def net_worth
        read_property(:net_worth)
      end

      # The total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets.
      def net_worth=(value)
        write_property(:net_worth, value)
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

      # A parent of this person.
      # Supersedes `parents`.
      def parent
        read_property(:parent)
      end

      # A parent of this person.
      # Supersedes `parents`.
      def parent=(value)
        write_property(:parent, value)
      end

      # A parents of the person.
      # Superseded by `parent`.
      def parents
        read_property(:parents)
      end

      # A parents of the person.
      # Superseded by `parent`.
      def parents=(value)
        write_property(:parents, value)
      end

      # Event that this person is a performer or participant in.
      def performer_in
        read_property(:performer_in)
      end

      # Event that this person is a performer or participant in.
      def performer_in=(value)
        write_property(:performer_in, value)
      end

      # A short string listing or describing pronouns for a person. Typically the person concerned is the best authority as pronouns are a critical part of personal identity and expression. Publishers and consumers of this information are reminded to treat this data responsibly, take country-specific laws related to gender expression into account, and be wary of out-of-date data and drawing unwarranted inferences about the person being described.
      #
      # In English, formulations such as "they/them", "she/her", and "he/him" are commonly used online and can also be used here. We do not intend to enumerate all possible micro-syntaxes in all languages. More structured and well-defined external values for pronouns can be referenced using the [[StructuredValue]] or [[DefinedTerm]] values.
      def pronouns
        read_property(:pronouns)
      end

      # A short string listing or describing pronouns for a person. Typically the person concerned is the best authority as pronouns are a critical part of personal identity and expression. Publishers and consumers of this information are reminded to treat this data responsibly, take country-specific laws related to gender expression into account, and be wary of out-of-date data and drawing unwarranted inferences about the person being described.
      #
      # In English, formulations such as "they/them", "she/her", and "he/him" are commonly used online and can also be used here. We do not intend to enumerate all possible micro-syntaxes in all languages. More structured and well-defined external values for pronouns can be referenced using the [[StructuredValue]] or [[DefinedTerm]] values.
      def pronouns=(value)
        write_property(:pronouns, value)
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

      # The most generic familial relation.
      def related_to
        read_property(:related_to)
      end

      # The most generic familial relation.
      def related_to=(value)
        write_property(:related_to, value)
      end

      # A pointer to products or services sought by the organization or person (demand).
      def seeks
        read_property(:seeks)
      end

      # A pointer to products or services sought by the organization or person (demand).
      def seeks=(value)
        write_property(:seeks, value)
      end

      # A sibling of the person.
      # Supersedes `siblings`.
      def sibling
        read_property(:sibling)
      end

      # A sibling of the person.
      # Supersedes `siblings`.
      def sibling=(value)
        write_property(:sibling, value)
      end

      # A sibling of the person.
      # Superseded by `sibling`.
      def siblings
        read_property(:siblings)
      end

      # A sibling of the person.
      # Superseded by `sibling`.
      def siblings=(value)
        write_property(:siblings, value)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills
        read_property(:skills)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills=(value)
        write_property(:skills, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end

      # The person's spouse.
      def spouse
        read_property(:spouse)
      end

      # The person's spouse.
      def spouse=(value)
        write_property(:spouse, value)
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

      # The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix.
      def vat_id
        read_property(:vat_id)
      end

      # The value-added Tax ID of the organization or person with national prefix (for example IT123456789). Can also be described as [[iso6523Code]] with proper prefix.
      def vat_id=(value)
        write_property(:vat_id, value)
      end

      # The weight of the product or person.
      def weight
        read_property(:weight)
      end

      # The weight of the product or person.
      def weight=(value)
        write_property(:weight, value)
      end

      # A contact location for a person's place of work.
      def work_location
        read_property(:work_location)
      end

      # A contact location for a person's place of work.
      def work_location=(value)
        write_property(:work_location, value)
      end

      # Organizations that the person works for.
      def works_for
        read_property(:works_for)
      end

      # Organizations that the person works for.
      def works_for=(value)
        write_property(:works_for, value)
      end
    end
  end
end
