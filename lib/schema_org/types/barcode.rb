module SchemaOrg
  # https://schema.org/Barcode
  #
  # An image of a visual machine-readable code such as a barcode or QR code.
  class Barcode < Base
    include Mixins::Barcode
  end
end
