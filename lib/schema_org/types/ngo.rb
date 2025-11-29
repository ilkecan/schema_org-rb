module SchemaOrg
  # https://schema.org/NGO
  #
  # Organization: Non-governmental Organization.
  class NGO < Base
    include Mixins::NGO
  end
end
