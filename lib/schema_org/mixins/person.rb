module SchemaOrg
  module Mixins
    module Person
      include Thing

      def self.schema_property_definitions
        {
          :additional_name => {
            schema_name: "additionalName",
            ranges: ["Text"],
          }.freeze,
          :address => {
            schema_name: "address",
            ranges: ["PostalAddress", "Text"],
          }.freeze,
          :affiliation => {
            schema_name: "affiliation",
            ranges: ["Organization"],
          }.freeze,
          :alumni_of => {
            schema_name: "alumniOf",
            ranges: ["EducationalOrganization", "Organization"],
          }.freeze,
          :award => {
            schema_name: "award",
            ranges: ["Text"],
          }.freeze,
          :awards => {
            schema_name: "awards",
            ranges: ["Text"],
          }.freeze,
          :birth_date => {
            schema_name: "birthDate",
            ranges: ["Date"],
          }.freeze,
          :birth_place => {
            schema_name: "birthPlace",
            ranges: ["Place"],
          }.freeze,
          :brand => {
            schema_name: "brand",
            ranges: ["Brand", "Organization"],
          }.freeze,
          :children => {
            schema_name: "children",
            ranges: ["Person"],
          }.freeze,
          :colleague => {
            schema_name: "colleague",
            ranges: ["Person", "URL"],
          }.freeze,
          :colleagues => {
            schema_name: "colleagues",
            ranges: ["Person"],
          }.freeze,
          :contact_point => {
            schema_name: "contactPoint",
            ranges: ["ContactPoint"],
          }.freeze,
          :contact_points => {
            schema_name: "contactPoints",
            ranges: ["ContactPoint"],
          }.freeze,
          :death_date => {
            schema_name: "deathDate",
            ranges: ["Date"],
          }.freeze,
          :death_place => {
            schema_name: "deathPlace",
            ranges: ["Place"],
          }.freeze,
          :duns => {
            schema_name: "duns",
            ranges: ["Text"],
          }.freeze,
          :email => {
            schema_name: "email",
            ranges: ["Text"],
          }.freeze,
          :family_name => {
            schema_name: "familyName",
            ranges: ["Text"],
          }.freeze,
          :fax_number => {
            schema_name: "faxNumber",
            ranges: ["Text"],
          }.freeze,
          :follows => {
            schema_name: "follows",
            ranges: ["Person"],
          }.freeze,
          :funder => {
            schema_name: "funder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :gender => {
            schema_name: "gender",
            ranges: ["GenderType", "Text"],
          }.freeze,
          :given_name => {
            schema_name: "givenName",
            ranges: ["Text"],
          }.freeze,
          :global_location_number => {
            schema_name: "globalLocationNumber",
            ranges: ["Text"],
          }.freeze,
          :has_occupation => {
            schema_name: "hasOccupation",
            ranges: ["Occupation"],
          }.freeze,
          :has_offer_catalog => {
            schema_name: "hasOfferCatalog",
            ranges: ["OfferCatalog"],
          }.freeze,
          :has_pos => {
            schema_name: "hasPOS",
            ranges: ["Place"],
          }.freeze,
          :height => {
            schema_name: "height",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :home_location => {
            schema_name: "homeLocation",
            ranges: ["ContactPoint", "Place"],
          }.freeze,
          :honorific_prefix => {
            schema_name: "honorificPrefix",
            ranges: ["Text"],
          }.freeze,
          :honorific_suffix => {
            schema_name: "honorificSuffix",
            ranges: ["Text"],
          }.freeze,
          :isic_v4 => {
            schema_name: "isicV4",
            ranges: ["Text"],
          }.freeze,
          :job_title => {
            schema_name: "jobTitle",
            ranges: ["Text"],
          }.freeze,
          :knows => {
            schema_name: "knows",
            ranges: ["Person"],
          }.freeze,
          :makes_offer => {
            schema_name: "makesOffer",
            ranges: ["Offer"],
          }.freeze,
          :member_of => {
            schema_name: "memberOf",
            ranges: ["Organization", "ProgramMembership"],
          }.freeze,
          :naics => {
            schema_name: "naics",
            ranges: ["Text"],
          }.freeze,
          :nationality => {
            schema_name: "nationality",
            ranges: ["Country"],
          }.freeze,
          :net_worth => {
            schema_name: "netWorth",
            ranges: ["MonetaryAmount", "PriceSpecification"],
          }.freeze,
          :owns => {
            schema_name: "owns",
            ranges: ["Thing"],
          }.freeze,
          :parent => {
            schema_name: "parent",
            ranges: ["Person"],
          }.freeze,
          :parents => {
            schema_name: "parents",
            ranges: ["Person"],
          }.freeze,
          :performer_in => {
            schema_name: "performerIn",
            ranges: ["Event"],
          }.freeze,
          :publishing_principles => {
            schema_name: "publishingPrinciples",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :related_to => {
            schema_name: "relatedTo",
            ranges: ["Person"],
          }.freeze,
          :seeks => {
            schema_name: "seeks",
            ranges: ["Demand"],
          }.freeze,
          :sibling => {
            schema_name: "sibling",
            ranges: ["Person"],
          }.freeze,
          :siblings => {
            schema_name: "siblings",
            ranges: ["Person"],
          }.freeze,
          :skills => {
            schema_name: "skills",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :sponsor => {
            schema_name: "sponsor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :spouse => {
            schema_name: "spouse",
            ranges: ["Person"],
          }.freeze,
          :tax_id => {
            schema_name: "taxID",
            ranges: ["Text"],
          }.freeze,
          :telephone => {
            schema_name: "telephone",
            ranges: ["Text"],
          }.freeze,
          :vat_id => {
            schema_name: "vatID",
            ranges: ["Text"],
          }.freeze,
          :weight => {
            schema_name: "weight",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :work_location => {
            schema_name: "workLocation",
            ranges: ["ContactPoint", "Place"],
          }.freeze,
          :works_for => {
            schema_name: "worksFor",
            ranges: ["Organization"],
          }.freeze,
        }.freeze
      end

      def additional_name
        read_property(:additional_name)
      end

      def additional_name=(value)
        write_property(:additional_name, value)
      end

      def address
        read_property(:address)
      end

      def address=(value)
        write_property(:address, value)
      end

      def affiliation
        read_property(:affiliation)
      end

      def affiliation=(value)
        write_property(:affiliation, value)
      end

      def alumni_of
        read_property(:alumni_of)
      end

      def alumni_of=(value)
        write_property(:alumni_of, value)
      end

      def award
        read_property(:award)
      end

      def award=(value)
        write_property(:award, value)
      end

      def awards
        read_property(:awards)
      end

      def awards=(value)
        write_property(:awards, value)
      end

      def birth_date
        read_property(:birth_date)
      end

      def birth_date=(value)
        write_property(:birth_date, value)
      end

      def birth_place
        read_property(:birth_place)
      end

      def birth_place=(value)
        write_property(:birth_place, value)
      end

      def brand
        read_property(:brand)
      end

      def brand=(value)
        write_property(:brand, value)
      end

      def children
        read_property(:children)
      end

      def children=(value)
        write_property(:children, value)
      end

      def colleague
        read_property(:colleague)
      end

      def colleague=(value)
        write_property(:colleague, value)
      end

      def colleagues
        read_property(:colleagues)
      end

      def colleagues=(value)
        write_property(:colleagues, value)
      end

      def contact_point
        read_property(:contact_point)
      end

      def contact_point=(value)
        write_property(:contact_point, value)
      end

      def contact_points
        read_property(:contact_points)
      end

      def contact_points=(value)
        write_property(:contact_points, value)
      end

      def death_date
        read_property(:death_date)
      end

      def death_date=(value)
        write_property(:death_date, value)
      end

      def death_place
        read_property(:death_place)
      end

      def death_place=(value)
        write_property(:death_place, value)
      end

      def duns
        read_property(:duns)
      end

      def duns=(value)
        write_property(:duns, value)
      end

      def email
        read_property(:email)
      end

      def email=(value)
        write_property(:email, value)
      end

      def family_name
        read_property(:family_name)
      end

      def family_name=(value)
        write_property(:family_name, value)
      end

      def fax_number
        read_property(:fax_number)
      end

      def fax_number=(value)
        write_property(:fax_number, value)
      end

      def follows
        read_property(:follows)
      end

      def follows=(value)
        write_property(:follows, value)
      end

      def funder
        read_property(:funder)
      end

      def funder=(value)
        write_property(:funder, value)
      end

      def gender
        read_property(:gender)
      end

      def gender=(value)
        write_property(:gender, value)
      end

      def given_name
        read_property(:given_name)
      end

      def given_name=(value)
        write_property(:given_name, value)
      end

      def global_location_number
        read_property(:global_location_number)
      end

      def global_location_number=(value)
        write_property(:global_location_number, value)
      end

      def has_occupation
        read_property(:has_occupation)
      end

      def has_occupation=(value)
        write_property(:has_occupation, value)
      end

      def has_offer_catalog
        read_property(:has_offer_catalog)
      end

      def has_offer_catalog=(value)
        write_property(:has_offer_catalog, value)
      end

      def has_pos
        read_property(:has_pos)
      end

      def has_pos=(value)
        write_property(:has_pos, value)
      end

      def height
        read_property(:height)
      end

      def height=(value)
        write_property(:height, value)
      end

      def home_location
        read_property(:home_location)
      end

      def home_location=(value)
        write_property(:home_location, value)
      end

      def honorific_prefix
        read_property(:honorific_prefix)
      end

      def honorific_prefix=(value)
        write_property(:honorific_prefix, value)
      end

      def honorific_suffix
        read_property(:honorific_suffix)
      end

      def honorific_suffix=(value)
        write_property(:honorific_suffix, value)
      end

      def isic_v4
        read_property(:isic_v4)
      end

      def isic_v4=(value)
        write_property(:isic_v4, value)
      end

      def job_title
        read_property(:job_title)
      end

      def job_title=(value)
        write_property(:job_title, value)
      end

      def knows
        read_property(:knows)
      end

      def knows=(value)
        write_property(:knows, value)
      end

      def makes_offer
        read_property(:makes_offer)
      end

      def makes_offer=(value)
        write_property(:makes_offer, value)
      end

      def member_of
        read_property(:member_of)
      end

      def member_of=(value)
        write_property(:member_of, value)
      end

      def naics
        read_property(:naics)
      end

      def naics=(value)
        write_property(:naics, value)
      end

      def nationality
        read_property(:nationality)
      end

      def nationality=(value)
        write_property(:nationality, value)
      end

      def net_worth
        read_property(:net_worth)
      end

      def net_worth=(value)
        write_property(:net_worth, value)
      end

      def owns
        read_property(:owns)
      end

      def owns=(value)
        write_property(:owns, value)
      end

      def parent
        read_property(:parent)
      end

      def parent=(value)
        write_property(:parent, value)
      end

      def parents
        read_property(:parents)
      end

      def parents=(value)
        write_property(:parents, value)
      end

      def performer_in
        read_property(:performer_in)
      end

      def performer_in=(value)
        write_property(:performer_in, value)
      end

      def publishing_principles
        read_property(:publishing_principles)
      end

      def publishing_principles=(value)
        write_property(:publishing_principles, value)
      end

      def related_to
        read_property(:related_to)
      end

      def related_to=(value)
        write_property(:related_to, value)
      end

      def seeks
        read_property(:seeks)
      end

      def seeks=(value)
        write_property(:seeks, value)
      end

      def sibling
        read_property(:sibling)
      end

      def sibling=(value)
        write_property(:sibling, value)
      end

      def siblings
        read_property(:siblings)
      end

      def siblings=(value)
        write_property(:siblings, value)
      end

      def skills
        read_property(:skills)
      end

      def skills=(value)
        write_property(:skills, value)
      end

      def sponsor
        read_property(:sponsor)
      end

      def sponsor=(value)
        write_property(:sponsor, value)
      end

      def spouse
        read_property(:spouse)
      end

      def spouse=(value)
        write_property(:spouse, value)
      end

      def tax_id
        read_property(:tax_id)
      end

      def tax_id=(value)
        write_property(:tax_id, value)
      end

      def telephone
        read_property(:telephone)
      end

      def telephone=(value)
        write_property(:telephone, value)
      end

      def vat_id
        read_property(:vat_id)
      end

      def vat_id=(value)
        write_property(:vat_id, value)
      end

      def weight
        read_property(:weight)
      end

      def weight=(value)
        write_property(:weight, value)
      end

      def work_location
        read_property(:work_location)
      end

      def work_location=(value)
        write_property(:work_location, value)
      end

      def works_for
        read_property(:works_for)
      end

      def works_for=(value)
        write_property(:works_for, value)
      end

    end
  end
end
