module SchemaOrg
  # https://schema.org/BorrowAction
  #
  # The act of obtaining an object under an agreement to return it at a later date. Reciprocal of LendAction.\n\nRelated actions:\n\n* [[LendAction]]: Reciprocal of BorrowAction.
  class BorrowAction < Base
    include Mixins::BorrowAction
  end
end
