require "active_support/concern"

module SchemaOrg
  module Mixins
    module Thing
      extend ActiveSupport::Concern

      included do
        option :additional_type, optional: true # An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the     use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href="https://schema.org/docs/styleguide.html">style guide</a>.
        option :disambiguating_description, optional: true # A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
        option :name, optional: true # The name of the item.
        option :potential_action, optional: true # Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
        option :same_as, optional: true # URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
        option :url, optional: true # URL of the item.
        option :alternate_name, optional: true # An alias for the item.
        option :description, optional: true # A description of the item.
        option :main_entity_of_page, optional: true # Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details. Inverse-property: `main_entity`.
        option :subject_of, optional: true # A CreativeWork or Event about this Thing. Inverse-property: `about`.
        option :image, optional: true # An image of the item. This can be a [[URL]] or a fully described [[ImageObject]].
        option :identifier, optional: true # The identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
      end
    end
  end
end
