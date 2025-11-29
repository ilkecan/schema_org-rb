module SchemaOrg
  # https://schema.org/GovernmentPermit
  #
  # A permit issued by a government agency.
  class GovernmentPermit < Base
    include Mixins::GovernmentPermit
  end
end
