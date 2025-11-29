module SchemaOrg
  # https://schema.org/DigitalDocument
  #
  # An electronic file or document.
  class DigitalDocument < Base
    include Mixins::DigitalDocument
  end
end
