module SchemaOrg
  # https://schema.org/HousePainter
  #
  # A house painting service.
  class HousePainter < Base
    include Mixins::HousePainter
  end
end
