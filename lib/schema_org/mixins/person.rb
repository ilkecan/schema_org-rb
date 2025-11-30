require "active_support/concern"

module SchemaOrg
  module Mixins
    module Person
      extend ActiveSupport::Concern

      include Thing

      included do
        option :additional_name # An additional name for a Person, can be used for a middle name.
        option :address # Physical address of the item.
        option :affiliation # An organization that this person is affiliated with. For example, a school/university, a club, or a team.
        option :awards # Awards won by or for this item. Superseded by `award`.
        option :birth_date # Date of birth.
        option :birth_place # The place where the person was born.
        option :brand # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
        option :children # A child of the person.
        option :colleagues # A colleague of the person. Superseded by `colleague`.
        option :contact_points # A contact point for a person or organization. Superseded by `contact_point`.
        option :death_date # Date of death.
        option :death_place # The place where the person died.
        option :duns # The Dun & Bradstreet DUNS number for identifying an organization or business person.
        option :email # Email address.
        option :family_name # Family name. In the U.S., the last name of a Person.
        option :fax_number # The fax number.
        option :follows # The most generic uni-directional social relation.
        option :funder # A person or organization that supports (sponsors) something through some kind of financial contribution.
        option :gender # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
        option :given_name # Given name. In the U.S., the first name of a Person.
        option :global_location_number # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
        option :has_occupation # The Person's occupation. For past professions, use Role for expressing dates.
        option :has_offer_catalog # Indicates an OfferCatalog listing for this Organization, Person, or Service.
        option :has_pos # Points-of-Sales operated by the organization or person.
        option :height # The height of the item.
        option :home_location # A contact location for a person's residence.
        option :honorific_prefix # An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
        option :honorific_suffix # An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
        option :isic_v4 # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
        option :job_title # The job title of the person (for example, Financial Manager).
        option :knows # The most generic bi-directional social/work relation.
        option :naics # The North American Industry Classification System (NAICS) code for a particular organization or business person.
        option :nationality # Nationality of the person.
        option :net_worth # The total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets.
        option :owns # Products owned by the organization or person.
        option :parents # A parents of the person. Superseded by `parent`.
        option :performer_in # Event that this person is a performer or participant in.
        option :publishing_principles # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].  While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
        option :related_to # The most generic familial relation.
        option :seeks # A pointer to products or services sought by the organization or person (demand).
        option :siblings # A sibling of the person. Superseded by `sibling`.
        option :skills # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
        option :spouse # The person's spouse.
        option :tax_id # The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
        option :telephone # The telephone number.
        option :vat_id # The Value-added Tax ID of the organization or person.
        option :weight # The weight of the product or person.
        option :work_location # A contact location for a person's place of work.
        option :works_for # Organizations that the person works for.
        option :alumni_of # An organization that the person is an alumni of.
        option :award # An award won by or for this item. Supersedes `awards`.
        option :colleague # A colleague of the person. Supersedes `colleagues`.
        option :contact_point # A contact point for a person or organization. Supersedes `contact_points`.
        option :makes_offer # A pointer to products or services offered by the organization or person.
        option :parent # A parent of this person. Supersedes `parents`.
        option :sibling # A sibling of the person. Supersedes `siblings`.
        option :sponsor # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
        option :member_of # An Organization (or ProgramMembership) to which this Person or Organization belongs.
      end
    end
  end
end
