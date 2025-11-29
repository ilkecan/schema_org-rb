module SchemaOrg
  # https://schema.org/StatusEnumeration
  #
  # Lists or enumerations dealing with status types.
  class StatusEnumeration < Base
    include Mixins::StatusEnumeration
  end
end
