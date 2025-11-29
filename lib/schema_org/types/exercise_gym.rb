module SchemaOrg
  # https://schema.org/ExerciseGym
  #
  # A gym.
  class ExerciseGym < Base
    include Mixins::ExerciseGym
  end
end
