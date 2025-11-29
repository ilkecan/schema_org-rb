module SchemaOrg
  # https://schema.org/SaleEvent
  #
  # Event type: Sales event.
  class SaleEvent < Base
    include Mixins::SaleEvent
  end
end
