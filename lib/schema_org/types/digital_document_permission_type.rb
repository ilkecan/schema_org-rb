module SchemaOrg
  # https://schema.org/DigitalDocumentPermissionType
  #
  # A type of permission which can be granted for accessing a digital document.
  class DigitalDocumentPermissionType < Base
    include Mixins::DigitalDocumentPermissionType
  end
end
