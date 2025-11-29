module SchemaOrg
  # https://schema.org/WebPageElement
  #
  # A web page element, like a table or an image.
  class WebPageElement < Base
    include Mixins::WebPageElement
  end
end
