module SchemaOrg
  module Codegen
    class Subject
      class Contract
        def initialize(attributes: Subject::Attributes.new)
          @attributes = attributes
        end

        def call(args)
          values = {}
          errors = []
          @attributes.each do |attribute|
            name = attribute[:name]
            value = args[name]
            if value.nil?
              errors << "#{name} is missing" unless attribute[:optional]
              next
            end
            values[name] = value
            list = attribute[:array] ? value : [value]
            size = list.size
            errors << "#{name} has too few values" if size < attribute[:min]
            errors << "#{name} has too many values" if size > attribute[:max]
          end
          {values:, errors:}
        end
      end
    end
  end
end
