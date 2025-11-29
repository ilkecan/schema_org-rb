module SchemaOrg
  # https://schema.org/SuspendAction
  #
  # The act of momentarily pausing a device or application (e.g. pause music playback or pause a timer).
  class SuspendAction < Base
    include Mixins::SuspendAction
  end
end
