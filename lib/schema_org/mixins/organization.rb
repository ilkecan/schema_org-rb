require "active_support/concern"

module SchemaOrg
  module Mixins
    module Organization
      extend ActiveSupport::Concern

      include Thing

      included do
        option :accepted_payment_method # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
        option :address # Physical address of the item.
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :awards # Awards won by or for this item. Superseded by `award`.
        option :brand # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
        option :company_registration # The official registration number of a business including the organization that issued it such as Company House or Chamber of Commerce.
        option :contact_points # A contact point for a person or organization. Superseded by `contact_point`.
        option :department # A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe.
        option :dissolution_date # The date that this organization was dissolved.
        option :duns # The Dun & Bradstreet DUNS number for identifying an organization or business person.
        option :email # Email address.
        option :employees # People working for this organization. Superseded by `employee`.
        option :events # Upcoming or past events associated with this place or organization. Superseded by `event`.
        option :fax_number # The fax number.
        option :founders # A person who founded this organization. Superseded by `founder`.
        option :founding_date # The date that this organization was founded.
        option :founding_location # The place where the Organization was founded.
        option :funder # A person or organization that supports (sponsors) something through some kind of financial contribution.
        option :global_location_number # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
        option :has_offer_catalog # Indicates an OfferCatalog listing for this Organization, Person, or Service.
        option :has_pos # Points-of-Sales operated by the organization or person.
        option :isic_v4 # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
        option :keywords # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
        option :legal_address # The legal address of an organization which acts as the officially registered address used for legal and tax purposes. The legal address can be different from the place of operations of a business and other addresses can be part of an organization.
        option :legal_name # The official name of the organization, e.g. the registered company name.
        option :legal_representative # One or multiple persons who represent this organization legally such as CEO or sole administrator.
        option :lei_code # An organization identifier that uniquely identifies a legal entity as defined in ISO 17442.
        option :logo # An associated logo.
        option :members # A member of this organization. Superseded by `member`.
        option :naics # The North American Industry Classification System (NAICS) code for a particular organization or business person.
        option :number_of_employees # The number of employees in an organization, e.g. business.
        option :owns # Products owned by the organization or person.
        option :publishing_principles # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].  While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
        option :reviews # Review of the item. Superseded by `review`.
        option :seeks # A pointer to products or services sought by the organization or person (demand).
        option :skills # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
        option :slogan # A slogan or motto associated with the item.
        option :tax_id # The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
        option :telephone # The telephone number.
        option :vat_id # The Value-added Tax ID of the organization or person.
        option :alumni # Alumni of an organization.
        option :award # An award won by or for this item. Supersedes `awards`.
        option :contact_point # A contact point for a person or organization. Supersedes `contact_points`.
        option :employee # Someone working for this organization. Supersedes `employees`.
        option :event # Upcoming or past event associated with this place, organization, or action. Supersedes `events`.
        option :founder # A person or organization who founded this organization. Supersedes `founders`.
        option :makes_offer # A pointer to products or services offered by the organization or person.
        option :review # A review of the item. Supersedes `reviews`.
        option :service_area # The geographic area where the service is provided. Supersedes `area`. Superseded by `area_served`.
        option :sponsor # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
        option :sub_organization # A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property.
        option :member_of # An Organization (or ProgramMembership) to which this Person or Organization belongs.
        option :parent_organization # The larger organization that this organization is a [[subOrganization]] of, if any. Supersedes `branch_of`.
        option :area_served # The geographic area where a service or offered item is provided. Supersedes `service_area`.
        option :member # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals. Supersedes `music_group_member`.
        option :location # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      end
    end
  end
end
