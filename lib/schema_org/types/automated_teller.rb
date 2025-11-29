module SchemaOrg
  # https://schema.org/AutomatedTeller
  #
  # ATM/cash machine.
  class AutomatedTeller < Base
    include Mixins::AutomatedTeller
  end
end
