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
              { name: :type, count: 1..2, array: false, normalizer: proc(&:last), type: Types::Coercible::Symbol },
            ].map do
              it.merge!(
                max: it[:count].max,
                min: it[:count].min,
                name: inflector.underscore(it[:name]).to_sym,
                optional: it[:count].include?(0),
              )
              it[:array] = it[:max] > 1 unless it.key?(:array)
              it[:type] = Types::Array.of it[:type] if it[:array]
              it[:normalizer] ||= unwrap unless it[:max] > 1
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
