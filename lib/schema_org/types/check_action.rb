module SchemaOrg
  # https://schema.org/CheckAction
  #
  # An agent inspects, determines, investigates, inquires, or examines an object's accuracy, quality, condition, or state.
  class CheckAction < Base
    include Mixins::CheckAction
  end
end
