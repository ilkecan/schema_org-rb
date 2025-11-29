module SchemaOrg
  # https://schema.org/InternetCafe
  #
  # An internet cafe.
  class InternetCafe < Base
    include Mixins::InternetCafe
  end
end
