require "active_support/concern"

module SchemaOrg
  module Mixins
    module Person
      extend ActiveSupport::Concern

      include Thing

      included do
        option :additional_name, optional: true # An additional name for a Person, can be used for a middle name.
        option :address, optional: true # Physical address of the item.
        option :affiliation, optional: true # An organization that this person is affiliated with. For example, a school/university, a club, or a team.
        option :awards, optional: true # Awards won by or for this item. Superseded by `award`.
        option :birth_date, optional: true # Date of birth.
        option :birth_place, optional: true # The place where the person was born.
        option :brand, optional: true # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
        option :children, optional: true # A child of the person.
        option :colleagues, optional: true # A colleague of the person. Superseded by `colleague`.
        option :contact_points, optional: true # A contact point for a person or organization. Superseded by `contact_point`.
        option :death_date, optional: true # Date of death.
        option :death_place, optional: true # The place where the person died.
        option :duns, optional: true # The Dun & Bradstreet DUNS number for identifying an organization or business person.
        option :email, optional: true # Email address.
        option :family_name, optional: true # Family name. In the U.S., the last name of a Person.
        option :fax_number, optional: true # The fax number.
        option :follows, optional: true # The most generic uni-directional social relation.
        option :funder, optional: true # A person or organization that supports (sponsors) something through some kind of financial contribution.
        option :gender, optional: true # Gender of something, typically a [[Person]], but possibly also fictional characters, animals, etc. While https://schema.org/Male and https://schema.org/Female may be used, text strings are also acceptable for people who are not a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender [[SportsTeam]] can be indicated with a text value of "Mixed".
        option :given_name, optional: true # Given name. In the U.S., the first name of a Person.
        option :global_location_number, optional: true # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
        option :has_occupation, optional: true # The Person's occupation. For past professions, use Role for expressing dates.
        option :has_offer_catalog, optional: true # Indicates an OfferCatalog listing for this Organization, Person, or Service.
        option :has_pos, optional: true # Points-of-Sales operated by the organization or person.
        option :height, optional: true # The height of the item.
        option :home_location, optional: true # A contact location for a person's residence.
        option :honorific_prefix, optional: true # An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
        option :honorific_suffix, optional: true # An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
        option :isic_v4, optional: true # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
        option :job_title, optional: true # The job title of the person (for example, Financial Manager).
        option :knows, optional: true # The most generic bi-directional social/work relation.
        option :naics, optional: true # The North American Industry Classification System (NAICS) code for a particular organization or business person.
        option :nationality, optional: true # Nationality of the person.
        option :net_worth, optional: true # The total financial value of the person as calculated by subtracting the total value of liabilities from the total value of assets.
        option :owns, optional: true # Products owned by the organization or person.
        option :parents, optional: true # A parents of the person. Superseded by `parent`.
        option :performer_in, optional: true # Event that this person is a performer or participant in.
        option :publishing_principles, optional: true # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].  While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
        option :related_to, optional: true # The most generic familial relation.
        option :seeks, optional: true # A pointer to products or services sought by the organization or person (demand).
        option :siblings, optional: true # A sibling of the person. Superseded by `sibling`.
        option :skills, optional: true # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
        option :spouse, optional: true # The person's spouse.
        option :tax_id, optional: true # The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
        option :telephone, optional: true # The telephone number.
        option :vat_id, optional: true # The Value-added Tax ID of the organization or person.
        option :weight, optional: true # The weight of the product or person.
        option :work_location, optional: true # A contact location for a person's place of work.
        option :works_for, optional: true # Organizations that the person works for.
        option :alumni_of, optional: true # An organization that the person is an alumni of. Inverse-property: `alumni`.
        option :award, optional: true # An award won by or for this item. Supersedes `awards`.
        option :colleague, optional: true # A colleague of the person. Supersedes `colleagues`.
        option :contact_point, optional: true # A contact point for a person or organization. Supersedes `contact_points`.
        option :makes_offer, optional: true # A pointer to products or services offered by the organization or person. Inverse-property: `offered_by`.
        option :parent, optional: true # A parent of this person. Supersedes `parents`.
        option :sibling, optional: true # A sibling of the person. Supersedes `siblings`.
        option :sponsor, optional: true # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
        option :member_of, optional: true # An Organization (or ProgramMembership) to which this Person or Organization belongs. Inverse-property: `member`.
      end
    end
  end
end
