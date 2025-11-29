module SchemaOrg
  # https://schema.org/PerformanceRole
  #
  # A PerformanceRole is a Role that some entity places with regard to a theatrical performance, e.g. in a Movie, TVSeries etc.
  class PerformanceRole < Base
    include Mixins::PerformanceRole
  end
end
