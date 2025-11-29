module SchemaOrg
  # https://schema.org/Pharmacy
  #
  # A pharmacy or drugstore.
  class Pharmacy < Base
    include Mixins::Pharmacy
  end
end
