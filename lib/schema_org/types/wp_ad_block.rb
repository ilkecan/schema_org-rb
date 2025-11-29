module SchemaOrg
  # https://schema.org/WPAdBlock
  #
  # An advertising section of the page.
  class WPAdBlock < Base
    include Mixins::WPAdBlock
  end
end
