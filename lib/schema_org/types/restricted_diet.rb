module SchemaOrg
  # https://schema.org/RestrictedDiet
  #
  # A diet restricted to certain foods or preparations for cultural, religious, health or lifestyle reasons.
  class RestrictedDiet < Base
    include Mixins::RestrictedDiet
  end
end
