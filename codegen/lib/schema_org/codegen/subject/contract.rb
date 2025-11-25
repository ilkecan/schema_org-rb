require 'dry-validation'

module SchemaOrg
  module Codegen
    class Subject
      class Contract < Dry::Validation::Contract
        schema do
          App['subject.attributes'].each do
            send(it[:optional] ? :optional : :required, it[:name]).value(
              :array,
              max_size?: it[:max],
              min_size?: it[:min],
            )
          end
        end

        rule(:type) do
          key.failure('is ambigious') if value.count == 2 && value.first != :Class
        end
      end
    end
  end
end
