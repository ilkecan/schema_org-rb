# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/USNonprofitType
  #
  # USNonprofitType: Non-profit organization type originating from the United States.
  class USNonprofitType < Base
    include Mixins::USNonprofitType

    SCHEMA_NAME = "USNonprofitType"
    SCHEMA_TYPES = [self, SchemaOrg::NonprofitType, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    NONPROFIT501A = EnumerationValue.new("Nonprofit501a", [SchemaOrg::USNonprofitType])
    NONPROFIT501C1 = EnumerationValue.new("Nonprofit501c1", [SchemaOrg::USNonprofitType])
    NONPROFIT501C10 = EnumerationValue.new("Nonprofit501c10", [SchemaOrg::USNonprofitType])
    NONPROFIT501C11 = EnumerationValue.new("Nonprofit501c11", [SchemaOrg::USNonprofitType])
    NONPROFIT501C12 = EnumerationValue.new("Nonprofit501c12", [SchemaOrg::USNonprofitType])
    NONPROFIT501C13 = EnumerationValue.new("Nonprofit501c13", [SchemaOrg::USNonprofitType])
    NONPROFIT501C14 = EnumerationValue.new("Nonprofit501c14", [SchemaOrg::USNonprofitType])
    NONPROFIT501C15 = EnumerationValue.new("Nonprofit501c15", [SchemaOrg::USNonprofitType])
    NONPROFIT501C16 = EnumerationValue.new("Nonprofit501c16", [SchemaOrg::USNonprofitType])
    NONPROFIT501C17 = EnumerationValue.new("Nonprofit501c17", [SchemaOrg::USNonprofitType])
    NONPROFIT501C18 = EnumerationValue.new("Nonprofit501c18", [SchemaOrg::USNonprofitType])
    NONPROFIT501C19 = EnumerationValue.new("Nonprofit501c19", [SchemaOrg::USNonprofitType])
    NONPROFIT501C2 = EnumerationValue.new("Nonprofit501c2", [SchemaOrg::USNonprofitType])
    NONPROFIT501C20 = EnumerationValue.new("Nonprofit501c20", [SchemaOrg::USNonprofitType])
    NONPROFIT501C21 = EnumerationValue.new("Nonprofit501c21", [SchemaOrg::USNonprofitType])
    NONPROFIT501C22 = EnumerationValue.new("Nonprofit501c22", [SchemaOrg::USNonprofitType])
    NONPROFIT501C23 = EnumerationValue.new("Nonprofit501c23", [SchemaOrg::USNonprofitType])
    NONPROFIT501C24 = EnumerationValue.new("Nonprofit501c24", [SchemaOrg::USNonprofitType])
    NONPROFIT501C25 = EnumerationValue.new("Nonprofit501c25", [SchemaOrg::USNonprofitType])
    NONPROFIT501C26 = EnumerationValue.new("Nonprofit501c26", [SchemaOrg::USNonprofitType])
    NONPROFIT501C27 = EnumerationValue.new("Nonprofit501c27", [SchemaOrg::USNonprofitType])
    NONPROFIT501C28 = EnumerationValue.new("Nonprofit501c28", [SchemaOrg::USNonprofitType])
    NONPROFIT501C3 = EnumerationValue.new("Nonprofit501c3", [SchemaOrg::USNonprofitType])
    NONPROFIT501C4 = EnumerationValue.new("Nonprofit501c4", [SchemaOrg::USNonprofitType])
    NONPROFIT501C5 = EnumerationValue.new("Nonprofit501c5", [SchemaOrg::USNonprofitType])
    NONPROFIT501C6 = EnumerationValue.new("Nonprofit501c6", [SchemaOrg::USNonprofitType])
    NONPROFIT501C7 = EnumerationValue.new("Nonprofit501c7", [SchemaOrg::USNonprofitType])
    NONPROFIT501C8 = EnumerationValue.new("Nonprofit501c8", [SchemaOrg::USNonprofitType])
    NONPROFIT501C9 = EnumerationValue.new("Nonprofit501c9", [SchemaOrg::USNonprofitType])
    NONPROFIT501D = EnumerationValue.new("Nonprofit501d", [SchemaOrg::USNonprofitType])
    NONPROFIT501E = EnumerationValue.new("Nonprofit501e", [SchemaOrg::USNonprofitType])
    NONPROFIT501F = EnumerationValue.new("Nonprofit501f", [SchemaOrg::USNonprofitType])
    NONPROFIT501K = EnumerationValue.new("Nonprofit501k", [SchemaOrg::USNonprofitType])
    NONPROFIT501N = EnumerationValue.new("Nonprofit501n", [SchemaOrg::USNonprofitType])
    NONPROFIT501Q = EnumerationValue.new("Nonprofit501q", [SchemaOrg::USNonprofitType])
    NONPROFIT527 = EnumerationValue.new("Nonprofit527", [SchemaOrg::USNonprofitType])
    VALUES = [NONPROFIT501A, NONPROFIT501C1, NONPROFIT501C10, NONPROFIT501C11, NONPROFIT501C12, NONPROFIT501C13, NONPROFIT501C14, NONPROFIT501C15, NONPROFIT501C16, NONPROFIT501C17, NONPROFIT501C18, NONPROFIT501C19, NONPROFIT501C2, NONPROFIT501C20, NONPROFIT501C21, NONPROFIT501C22, NONPROFIT501C23, NONPROFIT501C24, NONPROFIT501C25, NONPROFIT501C26, NONPROFIT501C27, NONPROFIT501C28, NONPROFIT501C3, NONPROFIT501C4, NONPROFIT501C5, NONPROFIT501C6, NONPROFIT501C7, NONPROFIT501C8, NONPROFIT501C9, NONPROFIT501D, NONPROFIT501E, NONPROFIT501F, NONPROFIT501K, NONPROFIT501N, NONPROFIT501Q, NONPROFIT527].freeze

    def self.values
      VALUES
    end
  end
end
