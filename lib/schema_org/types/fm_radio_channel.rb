module SchemaOrg
  # https://schema.org/FMRadioChannel
  #
  # A radio channel that uses FM.
  class FMRadioChannel < Base
    include Mixins::FMRadioChannel
  end
end
