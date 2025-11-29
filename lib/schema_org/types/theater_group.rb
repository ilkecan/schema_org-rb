module SchemaOrg
  # https://schema.org/TheaterGroup
  #
  # A theater group or company, for example, the Royal Shakespeare Company or Druid Theatre.
  class TheaterGroup < Base
    include Mixins::TheaterGroup
  end
end
