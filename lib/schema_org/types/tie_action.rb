module SchemaOrg
  # https://schema.org/TieAction
  #
  # The act of reaching a draw in a competitive activity.
  class TieAction < Base
    include Mixins::TieAction
  end
end
