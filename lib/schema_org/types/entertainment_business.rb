module SchemaOrg
  # https://schema.org/EntertainmentBusiness
  #
  # A business providing entertainment.
  class EntertainmentBusiness < Base
    include Mixins::EntertainmentBusiness
  end
end
