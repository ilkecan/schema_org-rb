module SchemaOrg
  module Codegen
    class Subject
      module Attributes
        private_class_method def self.attributes
          @attributes ||= begin
            many = ::Float::INFINITY
            # NOTE: examples to many "objects":
            # contributor: CreditCard
            # domainIncludes: acceptedPaymentMethod
            # equivalentClass: Dataset
            # rangeIncludes: acceptedAnswer
            # source: skills
            # subClassOf: AutoPartsStore
            [
              { name: :comment, type: proc { it.first.to_s }, count: 1..1 },
              { name: :contributor, count: 0..many },
              { name: :domainIncludes, count: 0..many },
              { name: :equivalentClass, count: 0..many },   # owl:equivalentClass
              { name: :equivalentProperty, count: 0..1 },  # owl:equivalentProperty
              { name: :inverseOf, count: 0..1 },
              { name: :label, type: proc { it.first.to_sym }, count: 1..1 },
              { name: :rangeIncludes, count: 0..many },
              { name: :sameAs, count: 0..1 },
              { name: :source, count: 0..many },
              { name: :subClassOf, count: 0..many },
              { name: :subPropertyOf, count: 0..1 },
              { name: :supersededBy, count: 0..1 },
              { name: :type, type: proc { it.map(&:to_sym) }, count: 1..2 },
            ].map do
              it.merge!(
                name: INFLECTOR.underscore(it[:name]).to_sym,
                optional: it[:count].include?(0),
              )
            end
          end
        end

        module_function

        def each(&block)
          attributes.each(&block)
        end
      end
    end
  end
end
