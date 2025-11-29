module SchemaOrg
  # https://schema.org/PostOffice
  #
  # A post office.
  class PostOffice < Base
    include Mixins::PostOffice
  end
end
