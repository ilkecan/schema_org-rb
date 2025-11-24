require 'dry-struct'

module SchemaOrg
  module Codegen
    class Subject < Dry::Struct
      schema schema.strict

      attribute :prefixes, Types::Strict::Hash
      attribute :statements, Types::Coercible::Array

      App['subject.attributes'].each do
        send(it[:optional] ? :attribute? : :attribute, it[:name], it[:type])
      end

      def comment_lines
        comment.strip.split "\n"
      end

      def name
        label
      end

      def parents
        sub_class_of.to_a
      end

      def url
        "#{prefixes[nil]}#{label}"
      end
    end
  end
end
