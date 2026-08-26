require "active_support/inflector"

module SchemaOrg
  module Codegen
    class Naming
      DIGIT_WORDS = {
        "0" => "Zero",
        "1" => "One",
        "2" => "Two",
        "3" => "Three",
        "4" => "Four",
        "5" => "Five",
        "6" => "Six",
        "7" => "Seven",
        "8" => "Eight",
        "9" => "Nine"
      }.freeze

      def constant_name(schema_name)
        name = replace_leading_digits(schema_name.to_s)
        validate_constant!(name, schema_name)
        name
      end

      def method_name(schema_name)
        name = ActiveSupport::Inflector.underscore(replace_leading_digits(schema_name.to_s)).to_sym
        validate_method!(name, schema_name)
        name
      end

      def file_name(schema_name)
        ActiveSupport::Inflector.underscore(constant_name(schema_name))
      end

      def enumeration_constant_name(schema_name)
        name = method_name(schema_name).to_s.upcase
        validate_constant!(name, schema_name)
        name
      end

      private

      def replace_leading_digits(name)
        name.sub(/\A\d+/) { |digits| digits.each_char.map { |digit| DIGIT_WORDS.fetch(digit) }.join }
      end

      def validate_constant!(name, schema_name)
        return name if /\A[A-Z][A-Za-z0-9_]*\z/.match?(name)

        raise ValidationError, "Invalid Ruby constant name for schema term #{schema_name}: #{name}"
      end

      def validate_method!(name, schema_name)
        text = name.to_s
        return name if /\A[a-z_][A-Za-z0-9_]*[!?]?\z/.match?(text)

        raise ValidationError, "Invalid Ruby method name for schema term #{schema_name}: #{text}"
      end
    end
  end
end
