require 'dry-validation'

module SchemaOrg
  module Codegen
    class Subject
      class Contract < Dry::Validation::Contract
        schema do
          App['subject.attributes'].each do
            send(it[:optional] ? :optional : :required, it[:name]).value(
              :array,
              min_size?: it[:count].min,
              max_size?: it[:count].max,
            )
          end
        end
      end
    end
  end
end
