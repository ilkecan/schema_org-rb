module SchemaOrg
  # https://schema.org/MoveAction
  #
  # The act of an agent relocating to a place.\n\nRelated actions:\n\n* [[TransferAction]]: Unlike TransferAction, the subject of the move is a living Person or Organization rather than an inanimate object.
  class MoveAction < Base
    include Mixins::MoveAction
  end
end
