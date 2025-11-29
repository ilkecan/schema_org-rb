module SchemaOrg
  # https://schema.org/AutoDealer
  #
  # An car dealership.
  class AutoDealer < Base
    include Mixins::AutoDealer
  end
end
