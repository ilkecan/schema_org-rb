module SchemaOrg
  # https://schema.org/WPHeader
  #
  # The header section of the page.
  class WPHeader < Base
    include Mixins::WPHeader
  end
end
