module SchemaOrg
  # https://schema.org/ResumeAction
  #
  # The act of resuming a device or application which was formerly paused (e.g. resume music playback or resume a timer).
  class ResumeAction < Base
    include Mixins::ResumeAction
  end
end
