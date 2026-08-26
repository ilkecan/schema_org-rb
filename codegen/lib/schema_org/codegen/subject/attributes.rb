module SchemaOrg
  module Codegen
    class Subject
      class Attributes
        def initialize(naming: Naming.new)
          @naming = naming
        end

        def each(&block)
          attributes.each(&block)
        end

        def [](name)
          store.fetch(name)
        end

        private

        def attributes
          @attributes ||= begin
            many = ::Float::INFINITY
            [
              {name: :comment, count: 1..1, default: ""},
              {name: :contributor, count: 0..many},
              {name: :domainIncludes, count: 0..many},
              {name: :equivalentClass, count: 0..many},
              {name: :equivalentProperty, count: 0..1},
              {name: :inverseOf, count: 0..1},
              {name: :label, count: 1..1},
              {name: :rangeIncludes, count: 0..many},
              {name: :sameAs, count: 0..1},
              {name: :source, count: 0..many},
              {name: :subClassOf, count: 0..many},
              {name: :subPropertyOf, count: 0..1},
              {name: :supersededBy, count: 0..1},
              {name: :type, count: 1..many}
            ].map do |attribute|
              name = @naming.method_name(attribute[:name]).to_sym
              max = attribute[:count].max
              attribute.merge(name:, min: attribute[:count].min, max:, optional: attribute[:count].min.zero?, array: max > 1)
            end
          end
        end

        def store
          @store ||= attributes.to_h { |attribute| [attribute[:name], attribute] }
        end
      end
    end
  end
end
