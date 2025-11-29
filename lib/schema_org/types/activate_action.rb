module SchemaOrg
  # https://schema.org/ActivateAction
  #
  # The act of starting or activating a device or application (e.g. starting a timer or turning on a flashlight).
  class ActivateAction < Base
    include Mixins::ActivateAction
  end
end
