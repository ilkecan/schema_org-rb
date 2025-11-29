module SchemaOrg
  # https://schema.org/Corporation
  #
  # Organization: A business corporation.
  class Corporation < Base
    include Mixins::Corporation
  end
end
