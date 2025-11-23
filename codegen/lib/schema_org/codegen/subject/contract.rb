require 'dry-validation'

module SchemaOrg
  module Codegen
    class Subject
      class Contract < Dry::Validation::Contract
        schema do
          required(:comment).value(:array, size?: 1)
          required(:label).value(:array, size?: 1)
          required(:type).value(:array, min_size?: 1)
        end
      end
    end
  end
end
