module SchemaOrg
  module Mixins
    module Organization
      include Thing

      def self.schema_property_definitions
        {
          :accepted_payment_method => {
            schema_name: "acceptedPaymentMethod",
            ranges: ["LoanOrCredit", "PaymentMethod", "Text"],
          }.freeze,
          :address => {
            schema_name: "address",
            ranges: ["PostalAddress", "Text"],
          }.freeze,
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :alumni => {
            schema_name: "alumni",
            ranges: ["Person"],
          }.freeze,
          :area_served => {
            schema_name: "areaServed",
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"],
          }.freeze,
          :award => {
            schema_name: "award",
            ranges: ["Text"],
          }.freeze,
          :awards => {
            schema_name: "awards",
            ranges: ["Text"],
          }.freeze,
          :brand => {
            schema_name: "brand",
            ranges: ["Brand", "Organization"],
          }.freeze,
          :company_registration => {
            schema_name: "companyRegistration",
            ranges: ["Certification"],
          }.freeze,
          :contact_point => {
            schema_name: "contactPoint",
            ranges: ["ContactPoint"],
          }.freeze,
          :contact_points => {
            schema_name: "contactPoints",
            ranges: ["ContactPoint"],
          }.freeze,
          :department => {
            schema_name: "department",
            ranges: ["Organization"],
          }.freeze,
          :dissolution_date => {
            schema_name: "dissolutionDate",
            ranges: ["Date"],
          }.freeze,
          :duns => {
            schema_name: "duns",
            ranges: ["Text"],
          }.freeze,
          :email => {
            schema_name: "email",
            ranges: ["Text"],
          }.freeze,
          :employee => {
            schema_name: "employee",
            ranges: ["Person"],
          }.freeze,
          :employees => {
            schema_name: "employees",
            ranges: ["Person"],
          }.freeze,
          :event => {
            schema_name: "event",
            ranges: ["Event"],
          }.freeze,
          :events => {
            schema_name: "events",
            ranges: ["Event"],
          }.freeze,
          :fax_number => {
            schema_name: "faxNumber",
            ranges: ["Text"],
          }.freeze,
          :founder => {
            schema_name: "founder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :founders => {
            schema_name: "founders",
            ranges: ["Person"],
          }.freeze,
          :founding_date => {
            schema_name: "foundingDate",
            ranges: ["Date"],
          }.freeze,
          :founding_location => {
            schema_name: "foundingLocation",
            ranges: ["Place"],
          }.freeze,
          :funder => {
            schema_name: "funder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :global_location_number => {
            schema_name: "globalLocationNumber",
            ranges: ["Text"],
          }.freeze,
          :has_offer_catalog => {
            schema_name: "hasOfferCatalog",
            ranges: ["OfferCatalog"],
          }.freeze,
          :has_pos => {
            schema_name: "hasPOS",
            ranges: ["Place"],
          }.freeze,
          :isic_v4 => {
            schema_name: "isicV4",
            ranges: ["Text"],
          }.freeze,
          :keywords => {
            schema_name: "keywords",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :legal_address => {
            schema_name: "legalAddress",
            ranges: ["PostalAddress"],
          }.freeze,
          :legal_name => {
            schema_name: "legalName",
            ranges: ["Text"],
          }.freeze,
          :legal_representative => {
            schema_name: "legalRepresentative",
            ranges: ["Person"],
          }.freeze,
          :lei_code => {
            schema_name: "leiCode",
            ranges: ["Text"],
          }.freeze,
          :location => {
            schema_name: "location",
            ranges: ["Place", "PostalAddress", "Text"],
          }.freeze,
          :logo => {
            schema_name: "logo",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :makes_offer => {
            schema_name: "makesOffer",
            ranges: ["Offer"],
          }.freeze,
          :member => {
            schema_name: "member",
            ranges: ["Organization", "Person"],
          }.freeze,
          :member_of => {
            schema_name: "memberOf",
            ranges: ["Organization", "ProgramMembership"],
          }.freeze,
          :members => {
            schema_name: "members",
            ranges: ["Organization", "Person"],
          }.freeze,
          :naics => {
            schema_name: "naics",
            ranges: ["Text"],
          }.freeze,
          :number_of_employees => {
            schema_name: "numberOfEmployees",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :owns => {
            schema_name: "owns",
            ranges: ["Thing"],
          }.freeze,
          :parent_organization => {
            schema_name: "parentOrganization",
            ranges: ["Organization"],
          }.freeze,
          :publishing_principles => {
            schema_name: "publishingPrinciples",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :reviews => {
            schema_name: "reviews",
            ranges: ["Review"],
          }.freeze,
          :seeks => {
            schema_name: "seeks",
            ranges: ["Demand"],
          }.freeze,
          :service_area => {
            schema_name: "serviceArea",
            ranges: ["AdministrativeArea", "GeoShape", "Place"],
          }.freeze,
          :skills => {
            schema_name: "skills",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :slogan => {
            schema_name: "slogan",
            ranges: ["Text"],
          }.freeze,
          :sponsor => {
            schema_name: "sponsor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :sub_organization => {
            schema_name: "subOrganization",
            ranges: ["Organization"],
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
        }.freeze
      end

      def accepted_payment_method
        read_property(:accepted_payment_method)
      end

      def accepted_payment_method=(value)
        write_property(:accepted_payment_method, value)
      end

      def address
        read_property(:address)
      end

      def address=(value)
        write_property(:address, value)
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def alumni
        read_property(:alumni)
      end

      def alumni=(value)
        write_property(:alumni, value)
      end

      def area_served
        read_property(:area_served)
      end

      def area_served=(value)
        write_property(:area_served, value)
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

      def brand
        read_property(:brand)
      end

      def brand=(value)
        write_property(:brand, value)
      end

      def company_registration
        read_property(:company_registration)
      end

      def company_registration=(value)
        write_property(:company_registration, value)
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

      def department
        read_property(:department)
      end

      def department=(value)
        write_property(:department, value)
      end

      def dissolution_date
        read_property(:dissolution_date)
      end

      def dissolution_date=(value)
        write_property(:dissolution_date, value)
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

      def employee
        read_property(:employee)
      end

      def employee=(value)
        write_property(:employee, value)
      end

      def employees
        read_property(:employees)
      end

      def employees=(value)
        write_property(:employees, value)
      end

      def event
        read_property(:event)
      end

      def event=(value)
        write_property(:event, value)
      end

      def events
        read_property(:events)
      end

      def events=(value)
        write_property(:events, value)
      end

      def fax_number
        read_property(:fax_number)
      end

      def fax_number=(value)
        write_property(:fax_number, value)
      end

      def founder
        read_property(:founder)
      end

      def founder=(value)
        write_property(:founder, value)
      end

      def founders
        read_property(:founders)
      end

      def founders=(value)
        write_property(:founders, value)
      end

      def founding_date
        read_property(:founding_date)
      end

      def founding_date=(value)
        write_property(:founding_date, value)
      end

      def founding_location
        read_property(:founding_location)
      end

      def founding_location=(value)
        write_property(:founding_location, value)
      end

      def funder
        read_property(:funder)
      end

      def funder=(value)
        write_property(:funder, value)
      end

      def global_location_number
        read_property(:global_location_number)
      end

      def global_location_number=(value)
        write_property(:global_location_number, value)
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

      def isic_v4
        read_property(:isic_v4)
      end

      def isic_v4=(value)
        write_property(:isic_v4, value)
      end

      def keywords
        read_property(:keywords)
      end

      def keywords=(value)
        write_property(:keywords, value)
      end

      def legal_address
        read_property(:legal_address)
      end

      def legal_address=(value)
        write_property(:legal_address, value)
      end

      def legal_name
        read_property(:legal_name)
      end

      def legal_name=(value)
        write_property(:legal_name, value)
      end

      def legal_representative
        read_property(:legal_representative)
      end

      def legal_representative=(value)
        write_property(:legal_representative, value)
      end

      def lei_code
        read_property(:lei_code)
      end

      def lei_code=(value)
        write_property(:lei_code, value)
      end

      def location
        read_property(:location)
      end

      def location=(value)
        write_property(:location, value)
      end

      def logo
        read_property(:logo)
      end

      def logo=(value)
        write_property(:logo, value)
      end

      def makes_offer
        read_property(:makes_offer)
      end

      def makes_offer=(value)
        write_property(:makes_offer, value)
      end

      def member
        read_property(:member)
      end

      def member=(value)
        write_property(:member, value)
      end

      def member_of
        read_property(:member_of)
      end

      def member_of=(value)
        write_property(:member_of, value)
      end

      def members
        read_property(:members)
      end

      def members=(value)
        write_property(:members, value)
      end

      def naics
        read_property(:naics)
      end

      def naics=(value)
        write_property(:naics, value)
      end

      def number_of_employees
        read_property(:number_of_employees)
      end

      def number_of_employees=(value)
        write_property(:number_of_employees, value)
      end

      def owns
        read_property(:owns)
      end

      def owns=(value)
        write_property(:owns, value)
      end

      def parent_organization
        read_property(:parent_organization)
      end

      def parent_organization=(value)
        write_property(:parent_organization, value)
      end

      def publishing_principles
        read_property(:publishing_principles)
      end

      def publishing_principles=(value)
        write_property(:publishing_principles, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def reviews
        read_property(:reviews)
      end

      def reviews=(value)
        write_property(:reviews, value)
      end

      def seeks
        read_property(:seeks)
      end

      def seeks=(value)
        write_property(:seeks, value)
      end

      def service_area
        read_property(:service_area)
      end

      def service_area=(value)
        write_property(:service_area, value)
      end

      def skills
        read_property(:skills)
      end

      def skills=(value)
        write_property(:skills, value)
      end

      def slogan
        read_property(:slogan)
      end

      def slogan=(value)
        write_property(:slogan, value)
      end

      def sponsor
        read_property(:sponsor)
      end

      def sponsor=(value)
        write_property(:sponsor, value)
      end

      def sub_organization
        read_property(:sub_organization)
      end

      def sub_organization=(value)
        write_property(:sub_organization, value)
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

    end
  end
end
