module SchemaOrg
  # https://schema.org/PostalAddress
  #
  # The mailing address.
  class PostalAddress < Base
    include Mixins::PostalAddress
  end
end
