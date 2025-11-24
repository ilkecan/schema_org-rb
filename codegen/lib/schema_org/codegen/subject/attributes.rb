module SchemaOrg
  module Codegen
    class Subject
      class Attributes
        include Import[:inflector]

        def each(&block)
          attributes.each(&block)
        end

        def [](name)
          store[name]
        end

        private

        def attributes
          @attributes ||= begin
            many = ::Float::INFINITY
            unwrap = proc(&:first)
            # NOTE: examples to many "objects":
            # contributor: CreditCard
            # domainIncludes: acceptedPaymentMethod
            # equivalentClass: Dataset
            # rangeIncludes: acceptedAnswer
            # source: skills
            # subClassOf: AutoPartsStore
            [
              { name: :comment, count: 1..1, type: Types::Coercible::String },
              { name: :contributor, count: 0..many, type: Types::Coercible::Symbol },
              { name: :domainIncludes, count: 0..many, type: Types::Coercible::Symbol },
              { name: :equivalentClass, count: 0..many, type: Types::Coercible::Symbol },   # owl:equivalentClass
              { name: :equivalentProperty, count: 0..1, type: Types::Coercible::Symbol },  # owl:equivalentProperty
              { name: :inverseOf, count: 0..1, type: Types::Coercible::Symbol },
              { name: :label, count: 1..1, type: Types::Coercible::Symbol },
              { name: :rangeIncludes, count: 0..many, type: Types::Coercible::Symbol },
              { name: :sameAs, count: 0..1, type: Types::Coercible::Symbol },
              { name: :source, count: 0..many, type: Types::Coercible::Symbol },
              { name: :subClassOf, count: 0..many, type: Types::Coercible::Symbol },
              { name: :subPropertyOf, count: 0..1, type: Types::Coercible::Symbol },
              { name: :supersededBy, count: 0..1, type: Types::Coercible::Symbol },
              { name: :type, count: 1..2, type: Types::Coercible::Symbol },   # TODO add a custom `normalizer` to unwrap count=2, which only happens with `:DataType`
            ].map do
              it.merge!(
                max: it[:count].max,
                min: it[:count].min,
                name: inflector.underscore(it[:name]).to_sym,
                optional: it[:count].include?(0),
              )
              if it[:max] > 1
                it[:type] = Types::Array.of it[:type]
              else
                it[:normalizer] ||= unwrap unless it[:max] > 1
              end
              it
            end
          end
        end

        def store
          @store ||= attributes.map { [it[:name], it] }.to_h
        end
      end
    end
  end
end
