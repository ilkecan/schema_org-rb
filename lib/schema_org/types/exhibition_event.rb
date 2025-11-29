module SchemaOrg
  # https://schema.org/ExhibitionEvent
  #
  # Event type: Exhibition event, e.g. at a museum, library, archive, tradeshow, ...
  class ExhibitionEvent < Base
    include Mixins::ExhibitionEvent
  end
end
