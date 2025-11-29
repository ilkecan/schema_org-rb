module SchemaOrg
  # https://schema.org/WinAction
  #
  # The act of achieving victory in a competitive activity.
  class WinAction < Base
    include Mixins::WinAction
  end
end
