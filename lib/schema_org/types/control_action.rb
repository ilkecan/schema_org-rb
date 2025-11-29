module SchemaOrg
  # https://schema.org/ControlAction
  #
  # An agent controls a device or application.
  class ControlAction < Base
    include Mixins::ControlAction
  end
end
