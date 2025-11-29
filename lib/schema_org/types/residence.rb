module SchemaOrg
  # https://schema.org/Residence
  #
  # The place where a person lives.
  class Residence < Base
    include Mixins::Residence
  end
end
