module SchemaOrg
  # https://schema.org/ConvenienceStore
  #
  # A convenience store.
  class ConvenienceStore < Base
    include Mixins::ConvenienceStore
  end
end
