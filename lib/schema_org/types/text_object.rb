module SchemaOrg
  # https://schema.org/TextObject
  #
  # A text file. The text can be unformatted or contain markup, html, etc.
  class TextObject < Base
    include Mixins::TextObject
  end
end
