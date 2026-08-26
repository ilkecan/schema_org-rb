# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalScholarlyArticle
      include ScholarlyArticle

      def self.schema_property_definitions
        {
          publication_type: {
            schema_name: "publicationType",
            schema_url: "https://schema.org/publicationType",
            comment_lines: ["The type of the medical article, taken from the US NLM MeSH publication type catalog. See also [MeSH documentation](http://www.nlm.nih.gov/mesh/pubtypes.html)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The type of the medical article, taken from the US NLM MeSH publication type catalog. See also [MeSH documentation](http://www.nlm.nih.gov/mesh/pubtypes.html).
      def publication_type
        read_property(:publication_type)
      end

      # The type of the medical article, taken from the US NLM MeSH publication type catalog. See also [MeSH documentation](http://www.nlm.nih.gov/mesh/pubtypes.html).
      def publication_type=(value)
        write_property(:publication_type, value)
      end
    end
  end
end
