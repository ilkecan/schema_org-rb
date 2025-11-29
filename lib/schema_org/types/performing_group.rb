module SchemaOrg
  # https://schema.org/PerformingGroup
  #
  # A performance group, such as a band, an orchestra, or a circus.
  class PerformingGroup < Base
    include Mixins::PerformingGroup
  end
end
