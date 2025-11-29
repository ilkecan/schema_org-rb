module SchemaOrg
  # https://schema.org/Country
  #
  # A country.
  class Country < Base
    include Mixins::Country
  end
end
