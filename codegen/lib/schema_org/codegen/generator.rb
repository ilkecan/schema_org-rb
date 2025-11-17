require 'tilt'

module SchemaOrg
  module Codegen
    class Generator
      def class_template
        @class_template ||= Tilt::ERBTemplate.new('./codegen/templates/class.rb.erb', trim: '-')
      end

      def render_class(subject)
        output = class_template.render(subject)
        puts output
      end
    end
  end
end
