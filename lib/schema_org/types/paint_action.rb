module SchemaOrg
  # https://schema.org/PaintAction
  #
  # The act of producing a painting, typically with paint and canvas as instruments.
  class PaintAction < Base
    include Mixins::PaintAction
  end
end
