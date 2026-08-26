module SchemaOrg
  module Mixins
    module CommunicateAction
      include InteractAction

      def self.schema_property_definitions
        {
          :about => {
            schema_name: "about",
            ranges: ["Thing"],
          }.freeze,
          :in_language => {
            schema_name: "inLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :language => {
            schema_name: "language",
            ranges: ["Language"],
          }.freeze,
          :recipient => {
            schema_name: "recipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def about
        read_property(:about)
      end

      def about=(value)
        write_property(:about, value)
      end

      def in_language
        read_property(:in_language)
      end

      def in_language=(value)
        write_property(:in_language, value)
      end

      def language
        read_property(:language)
      end

      def language=(value)
        write_property(:language, value)
      end

      def recipient
        read_property(:recipient)
      end

      def recipient=(value)
        write_property(:recipient, value)
      end

    end
  end
end
