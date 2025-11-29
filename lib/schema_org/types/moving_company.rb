module SchemaOrg
  # https://schema.org/MovingCompany
  #
  # A moving company.
  class MovingCompany < Base
    include Mixins::MovingCompany
  end
end
