module SchemaOrg
  # https://schema.org/Church
  #
  # A church.
  class Church < Base
    include Mixins::Church
  end
end
