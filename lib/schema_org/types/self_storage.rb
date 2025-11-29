module SchemaOrg
  # https://schema.org/SelfStorage
  #
  # A self-storage facility.
  class SelfStorage < Base
    include Mixins::SelfStorage
  end
end
