require 'tilt'

module SchemaOrg
  module Codegen
    class TemplateEngine
      def initialize
        @templates = {}
      end

      def render(template_name, context)
        t = template template_name
        t.render context
      end

      private

      def template(name)
        @templates[name] ||= Tilt::ERBTemplate.new("./codegen/templates/#{name}.rb.erb", trim: '-')
      end
    end
  end
end
