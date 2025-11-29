module SchemaOrg
  # https://schema.org/ParentAudience
  #
  # A set of characteristics describing parents, who can be interested in viewing some content.
  class ParentAudience < Base
    include Mixins::ParentAudience
  end
end
