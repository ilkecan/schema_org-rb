module SchemaOrg
  # https://schema.org/Permit
  #
  # A permit issued by an organization, e.g. a parking pass.
  class Permit < Base
    include Mixins::Permit
  end
end
