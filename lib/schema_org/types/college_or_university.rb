module SchemaOrg
  # https://schema.org/CollegeOrUniversity
  #
  # A college, university, or other third-level educational institution.
  class CollegeOrUniversity < Base
    include Mixins::CollegeOrUniversity
  end
end
