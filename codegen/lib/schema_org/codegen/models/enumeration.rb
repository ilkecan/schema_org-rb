module SchemaOrg
  module Codegen
    module Models
      class Enumeration
        attr_reader :name, :members

        def initialize(name:, members:)
          @name = name
          @members = members.freeze
        end
      end
    end
  end
end
