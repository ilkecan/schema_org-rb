require "tilt"

module SchemaOrg
  module Codegen
    class TemplateEngine
      def initialize(templates_root: Pathname.new("./codegen/templates"))
        @templates_root = Pathname.new(templates_root)
        @templates = {}
      end

      def render(template_name, context)
        template(template_name).render(context)
      end

      private

      def template(name)
        @templates[name] ||= begin
          extension = (name == :signature) ? "rbs" : "rb"
          Tilt::ERBTemplate.new(@templates_root.join("#{name}.#{extension}.erb").to_s, trim: "-")
        end
      end
    end
  end
end
