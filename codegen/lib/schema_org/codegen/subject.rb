require 'dry-initializer'

module SchemaOrg
  module Codegen
    class Subject
      extend Dry::Initializer

      option :prefixes
      option :statements

      App['subject.attributes'].each do
        option it[:name], it[:type], optional: it[:optional]
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
