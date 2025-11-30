module SchemaOrg
  # https://schema.org/DatedMoneySpecification
  #
  # NOTE: Superseded by `MonetaryAmount`.
  #
  # A DatedMoneySpecification represents monetary values with optional start and end dates. For example, this could represent an employee's salary over a specific period of time. __Note:__ This type has been superseded by [[MonetaryAmount]], use of that type is recommended.
  class DatedMoneySpecification < Base
    include Mixins::DatedMoneySpecification
  end
end
