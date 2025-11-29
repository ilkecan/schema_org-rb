module SchemaOrg
  # https://schema.org/AutoWash
  #
  # A car wash business.
  class AutoWash < Base
    include Mixins::AutoWash
  end
end
