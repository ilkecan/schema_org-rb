module SchemaOrg
  # https://schema.org/VacationRental
  #
  # A kind of lodging business that focuses on renting single properties for limited time.
  class VacationRental < Base
    include Mixins::VacationRental
  end
end
