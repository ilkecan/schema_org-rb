require 'dry-initializer'
require 'tilt'

module SchemaOrg
  module Codegen
    class Generator
      extend Dry::Initializer

      include Import[:inflector]

      Template = Types::Coercible::Symbol.enum(*%i[class type])

      option :subject

      @templates = {}

      def self.template(name)
        @templates[name] ||= Tilt::ERBTemplate.new("./codegen/templates/#{name}.rb.erb", trim: '-')
      end

      def self.lib_root
        @lib_root ||= Pathname.new('./lib/schema_org')
      end

      def generate(type)
        file = output_file type
        output = render type
        file.write output
      end

      private

      def filename
        @filename ||= "#{inflector.underscore subject.name}.rb"
      end

      def output_file(type)
        xs = case type
        when Template[:class]
          [ filename ]
        when Template[:type]
          [ 'types', filename ]
        end
        self.class.lib_root.join(*xs)
      end

      def render(type)
        self.class.template(type).render(subject)
      end
    end
  end
end
