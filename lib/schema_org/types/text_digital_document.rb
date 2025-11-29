module SchemaOrg
  # https://schema.org/TextDigitalDocument
  #
  # A file composed primarily of text.
  class TextDigitalDocument < Base
    include Mixins::TextDigitalDocument
  end
end
