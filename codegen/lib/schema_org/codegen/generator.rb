require 'tilt'

module SchemaOrg
  module Codegen
    class Generator
      def class_template
        @class_template ||= Tilt::ERBTemplate.new('./codegen/templates/class.rb.erb', trim: '-')
      end

      def lib_root
        @lib_root ||= Pathname.new('./lib/schema_org')
      end

      def generate_class(subject)
        file = output_file subject
        output = class_template.render subject
        file.write output
      end

      def render_class(subject)
        class_template.render(subject)
      end

      def output_file(subject)
        lib_root.join "#{INFLECTOR.underscore subject.label}.rb"
      end
    end
  end
end
