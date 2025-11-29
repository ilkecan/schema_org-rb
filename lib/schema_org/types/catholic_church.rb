module SchemaOrg
  # https://schema.org/CatholicChurch
  #
  # A Catholic church.
  class CatholicChurch < Base
    include Mixins::CatholicChurch
  end
end
