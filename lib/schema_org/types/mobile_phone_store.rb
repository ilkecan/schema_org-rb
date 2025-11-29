module SchemaOrg
  # https://schema.org/MobilePhoneStore
  #
  # A store that sells mobile phones and related accessories.
  class MobilePhoneStore < Base
    include Mixins::MobilePhoneStore
  end
end
