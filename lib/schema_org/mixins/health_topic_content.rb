# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module HealthTopicContent
      include WebContent

      def self.schema_property_definitions
        {
          has_health_aspect: {
            schema_name: "hasHealthAspect",
            schema_url: "https://schema.org/hasHealthAspect",
            comment_lines: ["Indicates the aspect or aspects specifically addressed in some [[HealthTopicContent]]. For example, that the content is an overview, or that it talks about treatment, self-care, treatments or their side-effects."].freeze,
            ranges: ["HealthAspectEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the aspect or aspects specifically addressed in some [[HealthTopicContent]]. For example, that the content is an overview, or that it talks about treatment, self-care, treatments or their side-effects.
      def has_health_aspect
        read_property(:has_health_aspect)
      end

      # Indicates the aspect or aspects specifically addressed in some [[HealthTopicContent]]. For example, that the content is an overview, or that it talks about treatment, self-care, treatments or their side-effects.
      def has_health_aspect=(value)
        write_property(:has_health_aspect, value)
      end
    end
  end
end
