module SchemaOrg
  module Codegen
    class Subject
      attr_reader :prefixes, :statements, :url

      def initialize(prefixes:, statements:, url:, **attributes)
        @prefixes = prefixes.freeze
        @statements = statements.freeze
        @url = url.freeze
        attributes.each do |name, value|
          instance_variable_set("@#{name}", value)
          define_singleton_method(name) { instance_variable_get("@#{name}") }
        end
      end

      def comment_lines
        comment.to_s.strip.split("\n").map(&:rstrip)
      end

      def name
        label
      end

      def parents
        sub_class_of.to_a
      end

      def range_types
        range_includes.to_a
      end

      def type?(marker)
        type.include?(marker)
      end

      def used_on
        domain_includes.to_a
      end
    end
  end
end
