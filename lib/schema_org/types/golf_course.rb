module SchemaOrg
  # https://schema.org/GolfCourse
  #
  # A golf course.
  class GolfCourse < Base
    include Mixins::GolfCourse
  end
end
