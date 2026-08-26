module SchemaOrg
  module Mixins
    module SocialMediaPosting
      include Article

      def self.schema_property_definitions
        {
          :shared_content => {
            schema_name: "sharedContent",
            ranges: ["CreativeWork"],
          }.freeze,
        }.freeze
      end

      def shared_content
        read_property(:shared_content)
      end

      def shared_content=(value)
        write_property(:shared_content, value)
      end

    end
  end
end
