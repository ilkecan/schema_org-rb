module SchemaOrg
  # https://schema.org/AlignmentObject
  #
  # An intangible item that describes an alignment between a learning resource and a node in an educational framework.
  #
  # Should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
  class AlignmentObject
    include Types::AlignmentObject
  end
end
