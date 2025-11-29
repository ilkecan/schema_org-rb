module SchemaOrg
  # https://schema.org/HVACBusiness
  #
  # A business that provides Heating, Ventilation and Air Conditioning services.
  class HVACBusiness < Base
    include Mixins::HVACBusiness
  end
end
