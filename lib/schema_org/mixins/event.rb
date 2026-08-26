module SchemaOrg
  module Mixins
    module Event
      include Thing

      def self.schema_property_definitions
        {
          :about => {
            schema_name: "about",
            ranges: ["Thing"],
          }.freeze,
          :actor => {
            schema_name: "actor",
            ranges: ["PerformingGroup", "Person"],
          }.freeze,
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :attendee => {
            schema_name: "attendee",
            ranges: ["Organization", "Person"],
          }.freeze,
          :attendees => {
            schema_name: "attendees",
            ranges: ["Organization", "Person"],
          }.freeze,
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :composer => {
            schema_name: "composer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :contributor => {
            schema_name: "contributor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :door_time => {
            schema_name: "doorTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :end_date => {
            schema_name: "endDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :event_status => {
            schema_name: "eventStatus",
            ranges: ["EventStatusType"],
          }.freeze,
          :funder => {
            schema_name: "funder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :in_language => {
            schema_name: "inLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :is_accessible_for_free => {
            schema_name: "isAccessibleForFree",
            ranges: ["Boolean"],
          }.freeze,
          :keywords => {
            schema_name: "keywords",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :location => {
            schema_name: "location",
            ranges: ["Place", "PostalAddress", "Text"],
          }.freeze,
          :maximum_attendee_capacity => {
            schema_name: "maximumAttendeeCapacity",
            ranges: ["Integer"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :organizer => {
            schema_name: "organizer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :performer => {
            schema_name: "performer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :performers => {
            schema_name: "performers",
            ranges: ["Organization", "Person"],
          }.freeze,
          :previous_start_date => {
            schema_name: "previousStartDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :recorded_in => {
            schema_name: "recordedIn",
            ranges: ["CreativeWork"],
          }.freeze,
          :remaining_attendee_capacity => {
            schema_name: "remainingAttendeeCapacity",
            ranges: ["Integer"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :sponsor => {
            schema_name: "sponsor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :start_date => {
            schema_name: "startDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :sub_event => {
            schema_name: "subEvent",
            ranges: ["Event"],
          }.freeze,
          :sub_events => {
            schema_name: "subEvents",
            ranges: ["Event"],
          }.freeze,
          :super_event => {
            schema_name: "superEvent",
            ranges: ["Event"],
          }.freeze,
          :translator => {
            schema_name: "translator",
            ranges: ["Organization", "Person"],
          }.freeze,
          :typical_age_range => {
            schema_name: "typicalAgeRange",
            ranges: ["Text"],
          }.freeze,
          :work_featured => {
            schema_name: "workFeatured",
            ranges: ["CreativeWork"],
          }.freeze,
          :work_performed => {
            schema_name: "workPerformed",
            ranges: ["CreativeWork"],
          }.freeze,
        }.freeze
      end

      def about
        read_property(:about)
      end

      def about=(value)
        write_property(:about, value)
      end

      def actor
        read_property(:actor)
      end

      def actor=(value)
        write_property(:actor, value)
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def attendee
        read_property(:attendee)
      end

      def attendee=(value)
        write_property(:attendee, value)
      end

      def attendees
        read_property(:attendees)
      end

      def attendees=(value)
        write_property(:attendees, value)
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
      end

      def composer
        read_property(:composer)
      end

      def composer=(value)
        write_property(:composer, value)
      end

      def contributor
        read_property(:contributor)
      end

      def contributor=(value)
        write_property(:contributor, value)
      end

      def director
        read_property(:director)
      end

      def director=(value)
        write_property(:director, value)
      end

      def door_time
        read_property(:door_time)
      end

      def door_time=(value)
        write_property(:door_time, value)
      end

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def end_date
        read_property(:end_date)
      end

      def end_date=(value)
        write_property(:end_date, value)
      end

      def event_status
        read_property(:event_status)
      end

      def event_status=(value)
        write_property(:event_status, value)
      end

      def funder
        read_property(:funder)
      end

      def funder=(value)
        write_property(:funder, value)
      end

      def in_language
        read_property(:in_language)
      end

      def in_language=(value)
        write_property(:in_language, value)
      end

      def is_accessible_for_free
        read_property(:is_accessible_for_free)
      end

      def is_accessible_for_free=(value)
        write_property(:is_accessible_for_free, value)
      end

      def keywords
        read_property(:keywords)
      end

      def keywords=(value)
        write_property(:keywords, value)
      end

      def location
        read_property(:location)
      end

      def location=(value)
        write_property(:location, value)
      end

      def maximum_attendee_capacity
        read_property(:maximum_attendee_capacity)
      end

      def maximum_attendee_capacity=(value)
        write_property(:maximum_attendee_capacity, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

      def organizer
        read_property(:organizer)
      end

      def organizer=(value)
        write_property(:organizer, value)
      end

      def performer
        read_property(:performer)
      end

      def performer=(value)
        write_property(:performer, value)
      end

      def performers
        read_property(:performers)
      end

      def performers=(value)
        write_property(:performers, value)
      end

      def previous_start_date
        read_property(:previous_start_date)
      end

      def previous_start_date=(value)
        write_property(:previous_start_date, value)
      end

      def recorded_in
        read_property(:recorded_in)
      end

      def recorded_in=(value)
        write_property(:recorded_in, value)
      end

      def remaining_attendee_capacity
        read_property(:remaining_attendee_capacity)
      end

      def remaining_attendee_capacity=(value)
        write_property(:remaining_attendee_capacity, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def sponsor
        read_property(:sponsor)
      end

      def sponsor=(value)
        write_property(:sponsor, value)
      end

      def start_date
        read_property(:start_date)
      end

      def start_date=(value)
        write_property(:start_date, value)
      end

      def sub_event
        read_property(:sub_event)
      end

      def sub_event=(value)
        write_property(:sub_event, value)
      end

      def sub_events
        read_property(:sub_events)
      end

      def sub_events=(value)
        write_property(:sub_events, value)
      end

      def super_event
        read_property(:super_event)
      end

      def super_event=(value)
        write_property(:super_event, value)
      end

      def translator
        read_property(:translator)
      end

      def translator=(value)
        write_property(:translator, value)
      end

      def typical_age_range
        read_property(:typical_age_range)
      end

      def typical_age_range=(value)
        write_property(:typical_age_range, value)
      end

      def work_featured
        read_property(:work_featured)
      end

      def work_featured=(value)
        write_property(:work_featured, value)
      end

      def work_performed
        read_property(:work_performed)
      end

      def work_performed=(value)
        write_property(:work_performed, value)
      end

    end
  end
end
