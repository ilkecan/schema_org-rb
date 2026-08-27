# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/EventSeries
  #
  # A series of [[Event]]s. Included events can relate with the series using the [[superEvent]] property.
  #
  # An EventSeries is a collection of events that share some unifying characteristic. For example, "The Olympic Games" is a series, which
  # is repeated regularly. The "2012 London Olympics" can be presented both as an [[Event]] in the series "Olympic Games", and as an
  # [[EventSeries]] that included a number of sporting competitions as Events.
  #
  # The nature of the association between the events in an [[EventSeries]] can vary, but typical examples could
  # include a thematic event series (e.g. topical meetups or classes), or a series of regular events that share a location, attendee group and/or organizers.
  #
  # EventSeries has been defined as a kind of Event to make it easy for publishers to use it in an Event context without
  # worrying about which kinds of series are really event-like enough to call an Event. In general an EventSeries
  # may seem more Event-like when the period of time is compact and when aspects such as location are fixed, but
  # it may also sometimes prove useful to describe a longer-term series as an Event.
  class EventSeries < Base
    include Mixins::EventSeries

    SCHEMA_NAME = "EventSeries"
    SCHEMA_TYPES = [self, SchemaOrg::Event, SchemaOrg::Series, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
  end
end
