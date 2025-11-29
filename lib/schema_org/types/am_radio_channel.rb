module SchemaOrg
  # https://schema.org/AMRadioChannel
  #
  # A radio channel that uses AM.
  class AMRadioChannel < Base
    include Mixins::AMRadioChannel
  end
end
