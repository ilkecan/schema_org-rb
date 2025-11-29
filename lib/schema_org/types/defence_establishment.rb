module SchemaOrg
  # https://schema.org/DefenceEstablishment
  #
  # A defence establishment, such as an army or navy base.
  class DefenceEstablishment < Base
    include Mixins::DefenceEstablishment
  end
end
