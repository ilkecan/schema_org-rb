# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Event
      include Thing

      def self.schema_property_definitions
        {
          about: {
            schema_name: "about",
            schema_url: "https://schema.org/about",
            comment_lines: ["The subject matter of an object."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subjectOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          actor: {
            schema_name: "actor",
            schema_url: "https://schema.org/actor",
            comment_lines: ["An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["PerformingGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "actors"
          }.freeze,
          aggregate_rating: {
            schema_name: "aggregateRating",
            schema_url: "https://schema.org/aggregateRating",
            comment_lines: ["The overall rating, based on a collection of reviews or ratings, of the item."].freeze,
            ranges: ["AggregateRating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          attendee: {
            schema_name: "attendee",
            schema_url: "https://schema.org/attendee",
            comment_lines: ["A person or organization attending the event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "attendees"
          }.freeze,
          attendees: {
            schema_name: "attendees",
            schema_url: "https://schema.org/attendees",
            comment_lines: ["A person attending the event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "attendee",
            supersedes: nil
          }.freeze,
          audience: {
            schema_name: "audience",
            schema_url: "https://schema.org/audience",
            comment_lines: ["An intended audience, i.e. a group for whom something was created."].freeze,
            ranges: ["Audience"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "serviceAudience"
          }.freeze,
          composer: {
            schema_name: "composer",
            schema_url: "https://schema.org/composer",
            comment_lines: ["The person or organization who wrote a composition, or who is the composer of a work performed at some event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contributor: {
            schema_name: "contributor",
            schema_url: "https://schema.org/contributor",
            comment_lines: ["A secondary contributor to the CreativeWork or Event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          director: {
            schema_name: "director",
            schema_url: "https://schema.org/director",
            comment_lines: ["A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "directors"
          }.freeze,
          door_time: {
            schema_name: "doorTime",
            schema_url: "https://schema.org/doorTime",
            comment_lines: ["The time admission will commence."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duration: {
            schema_name: "duration",
            schema_url: "https://schema.org/duration",
            comment_lines: ["The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          event_attendance_mode: {
            schema_name: "eventAttendanceMode",
            schema_url: "https://schema.org/eventAttendanceMode",
            comment_lines: ["The eventAttendanceMode of an event indicates whether it occurs online, offline, or a mix."].freeze,
            ranges: ["EventAttendanceModeEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          event_schedule: {
            schema_name: "eventSchedule",
            schema_url: "https://schema.org/eventSchedule",
            comment_lines: ["Associates an [[Event]] with a [[Schedule]]. There are circumstances where it is preferable to share a schedule for a series of", "      repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly", "      gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An [[Event]] that", "      is associated with a [[Schedule]] using this property should not have [[startDate]] or [[endDate]] properties. These are instead defined within the associated", "      [[Schedule]], this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months", "      or seasons."].freeze,
            ranges: ["Schedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          event_status: {
            schema_name: "eventStatus",
            schema_url: "https://schema.org/eventStatus",
            comment_lines: ["An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled."].freeze,
            ranges: ["EventStatusType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funder: {
            schema_name: "funder",
            schema_url: "https://schema.org/funder",
            comment_lines: ["A person or organization that supports (sponsors) something through some kind of financial contribution."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funding: {
            schema_name: "funding",
            schema_url: "https://schema.org/funding",
            comment_lines: ["A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."].freeze,
            ranges: ["Grant"].freeze,
            external_ranges: [].freeze,
            inverse_of: "fundedItem",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_participation_offer: {
            schema_name: "hasParticipationOffer",
            schema_url: "https://schema.org/hasParticipationOffer",
            comment_lines: ["An offer to participate in the event, for example, Call for Proposals, Call for Speakers, or Call for Performers."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_sponsorship_offer: {
            schema_name: "hasSponsorshipOffer",
            schema_url: "https://schema.org/hasSponsorshipOffer",
            comment_lines: ["An offer to sponsor the event, for example, Sponsorship Prospectus, Sponsorship Opportunities, or Sponsor Packages."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_language: {
            schema_name: "inLanguage",
            schema_url: "https://schema.org/inLanguage",
            comment_lines: ["The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "language"
          }.freeze,
          is_accessible_for_free: {
            schema_name: "isAccessibleForFree",
            schema_url: "https://schema.org/isAccessibleForFree",
            comment_lines: ["A flag to signal that the item, event, or place is accessible for free."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "free"
          }.freeze,
          keywords: {
            schema_name: "keywords",
            schema_url: "https://schema.org/keywords",
            comment_lines: ["Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          location: {
            schema_name: "location",
            schema_url: "https://schema.org/location",
            comment_lines: ["The location of, for example, where an event is happening, where an organization is located, or where an action takes place."].freeze,
            ranges: ["Place", "PostalAddress", "Text", "VirtualLocation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_attendee_capacity: {
            schema_name: "maximumAttendeeCapacity",
            schema_url: "https://schema.org/maximumAttendeeCapacity",
            comment_lines: ["The total number of individuals that may attend an event or venue."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_physical_attendee_capacity: {
            schema_name: "maximumPhysicalAttendeeCapacity",
            schema_url: "https://schema.org/maximumPhysicalAttendeeCapacity",
            comment_lines: ["The maximum physical attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or the offline aspects, in the case of a [[MixedEventAttendanceMode]])."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_virtual_attendee_capacity: {
            schema_name: "maximumVirtualAttendeeCapacity",
            schema_url: "https://schema.org/maximumVirtualAttendeeCapacity",
            comment_lines: ["The maximum virtual attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the online aspects, in the case of a [[MixedEventAttendanceMode]])."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offers: {
            schema_name: "offers",
            schema_url: "https://schema.org/offers",
            comment_lines: ["An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["Demand", "Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "itemOffered",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          organizer: {
            schema_name: "organizer",
            schema_url: "https://schema.org/organizer",
            comment_lines: ["An organizer of an Event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          performer: {
            schema_name: "performer",
            schema_url: "https://schema.org/performer",
            comment_lines: ["A performer at the event&#x2014;for example, a presenter, musician, musical group or actor."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "performers"
          }.freeze,
          performers: {
            schema_name: "performers",
            schema_url: "https://schema.org/performers",
            comment_lines: ["The main performer or performers of the event&#x2014;for example, a presenter, musician, or actor."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "performer",
            supersedes: nil
          }.freeze,
          previous_start_date: {
            schema_name: "previousStartDate",
            schema_url: "https://schema.org/previousStartDate",
            comment_lines: ["Used in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recorded_in: {
            schema_name: "recordedIn",
            schema_url: "https://schema.org/recordedIn",
            comment_lines: ["The CreativeWork that captured all or part of this Event."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "recordedAt",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          remaining_attendee_capacity: {
            schema_name: "remainingAttendeeCapacity",
            schema_url: "https://schema.org/remainingAttendeeCapacity",
            comment_lines: ["The number of attendee places for an event that remain unallocated."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review: {
            schema_name: "review",
            schema_url: "https://schema.org/review",
            comment_lines: ["A review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "reviews"
          }.freeze,
          sponsor: {
            schema_name: "sponsor",
            schema_url: "https://schema.org/sponsor",
            comment_lines: ["A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sub_event: {
            schema_name: "subEvent",
            schema_url: "https://schema.org/subEvent",
            comment_lines: ["An Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: "superEvent",
            superseded_by: nil,
            supersedes: "subEvents"
          }.freeze,
          sub_events: {
            schema_name: "subEvents",
            schema_url: "https://schema.org/subEvents",
            comment_lines: ["Events that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "subEvent",
            supersedes: nil
          }.freeze,
          super_event: {
            schema_name: "superEvent",
            schema_url: "https://schema.org/superEvent",
            comment_lines: ["An event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subEvent",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          translator: {
            schema_name: "translator",
            schema_url: "https://schema.org/translator",
            comment_lines: ["Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          typical_age_range: {
            schema_name: "typicalAgeRange",
            schema_url: "https://schema.org/typicalAgeRange",
            comment_lines: ["The typical expected age range, e.g. '7-9', '11-'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_featured: {
            schema_name: "workFeatured",
            schema_url: "https://schema.org/workFeatured",
            comment_lines: ["A work featured in some event, e.g. exhibited in an ExhibitionEvent.", "       Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent)."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_performed: {
            schema_name: "workPerformed",
            schema_url: "https://schema.org/workPerformed",
            comment_lines: ["A work performed in some event, for example a play performed in a TheaterEvent."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about
        read_property(:about)
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about=(value)
        write_property(:about, value)
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor
        read_property(:actor)
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor=(value)
        write_property(:actor, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # A person or organization attending the event.
      # Supersedes `attendees`.
      def attendee
        read_property(:attendee)
      end

      # A person or organization attending the event.
      # Supersedes `attendees`.
      def attendee=(value)
        write_property(:attendee, value)
      end

      # A person attending the event.
      # Superseded by `attendee`.
      def attendees
        read_property(:attendees)
      end

      # A person attending the event.
      # Superseded by `attendee`.
      def attendees=(value)
        write_property(:attendees, value)
      end

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience
        read_property(:audience)
      end

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience=(value)
        write_property(:audience, value)
      end

      # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
      def composer
        read_property(:composer)
      end

      # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
      def composer=(value)
        write_property(:composer, value)
      end

      # A secondary contributor to the CreativeWork or Event.
      def contributor
        read_property(:contributor)
      end

      # A secondary contributor to the CreativeWork or Event.
      def contributor=(value)
        write_property(:contributor, value)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director
        read_property(:director)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director=(value)
        write_property(:director, value)
      end

      # The time admission will commence.
      def door_time
        read_property(:door_time)
      end

      # The time admission will commence.
      def door_time=(value)
        write_property(:door_time, value)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # The eventAttendanceMode of an event indicates whether it occurs online, offline, or a mix.
      def event_attendance_mode
        read_property(:event_attendance_mode)
      end

      # The eventAttendanceMode of an event indicates whether it occurs online, offline, or a mix.
      def event_attendance_mode=(value)
        write_property(:event_attendance_mode, value)
      end

      # Associates an [[Event]] with a [[Schedule]]. There are circumstances where it is preferable to share a schedule for a series of
      #       repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly
      #       gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An [[Event]] that
      #       is associated with a [[Schedule]] using this property should not have [[startDate]] or [[endDate]] properties. These are instead defined within the associated
      #       [[Schedule]], this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months
      #       or seasons.
      def event_schedule
        read_property(:event_schedule)
      end

      # Associates an [[Event]] with a [[Schedule]]. There are circumstances where it is preferable to share a schedule for a series of
      #       repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly
      #       gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An [[Event]] that
      #       is associated with a [[Schedule]] using this property should not have [[startDate]] or [[endDate]] properties. These are instead defined within the associated
      #       [[Schedule]], this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months
      #       or seasons.
      def event_schedule=(value)
        write_property(:event_schedule, value)
      end

      # An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
      def event_status
        read_property(:event_status)
      end

      # An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
      def event_status=(value)
        write_property(:event_status, value)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder
        read_property(:funder)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder=(value)
        write_property(:funder, value)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding
        read_property(:funding)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding=(value)
        write_property(:funding, value)
      end

      # An offer to participate in the event, for example, Call for Proposals, Call for Speakers, or Call for Performers.
      def has_participation_offer
        read_property(:has_participation_offer)
      end

      # An offer to participate in the event, for example, Call for Proposals, Call for Speakers, or Call for Performers.
      def has_participation_offer=(value)
        write_property(:has_participation_offer, value)
      end

      # An offer to sponsor the event, for example, Sponsorship Prospectus, Sponsorship Opportunities, or Sponsor Packages.
      def has_sponsorship_offer
        read_property(:has_sponsorship_offer)
      end

      # An offer to sponsor the event, for example, Sponsorship Prospectus, Sponsorship Opportunities, or Sponsor Packages.
      def has_sponsorship_offer=(value)
        write_property(:has_sponsorship_offer, value)
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language
        read_property(:in_language)
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language=(value)
        write_property(:in_language, value)
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Supersedes `free`.
      def is_accessible_for_free
        read_property(:is_accessible_for_free)
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Supersedes `free`.
      def is_accessible_for_free=(value)
        write_property(:is_accessible_for_free, value)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords
        read_property(:keywords)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords=(value)
        write_property(:keywords, value)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location
        read_property(:location)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location=(value)
        write_property(:location, value)
      end

      # The total number of individuals that may attend an event or venue.
      def maximum_attendee_capacity
        read_property(:maximum_attendee_capacity)
      end

      # The total number of individuals that may attend an event or venue.
      def maximum_attendee_capacity=(value)
        write_property(:maximum_attendee_capacity, value)
      end

      # The maximum physical attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or the offline aspects, in the case of a [[MixedEventAttendanceMode]]).
      def maximum_physical_attendee_capacity
        read_property(:maximum_physical_attendee_capacity)
      end

      # The maximum physical attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or the offline aspects, in the case of a [[MixedEventAttendanceMode]]).
      def maximum_physical_attendee_capacity=(value)
        write_property(:maximum_physical_attendee_capacity, value)
      end

      # The maximum virtual attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the online aspects, in the case of a [[MixedEventAttendanceMode]]).
      def maximum_virtual_attendee_capacity
        read_property(:maximum_virtual_attendee_capacity)
      end

      # The maximum virtual attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the online aspects, in the case of a [[MixedEventAttendanceMode]]).
      def maximum_virtual_attendee_capacity=(value)
        write_property(:maximum_virtual_attendee_capacity, value)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers
        read_property(:offers)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers=(value)
        write_property(:offers, value)
      end

      # An organizer of an Event.
      def organizer
        read_property(:organizer)
      end

      # An organizer of an Event.
      def organizer=(value)
        write_property(:organizer, value)
      end

      # A performer at the event&#x2014;for example, a presenter, musician, musical group or actor.
      # Supersedes `performers`.
      def performer
        read_property(:performer)
      end

      # A performer at the event&#x2014;for example, a presenter, musician, musical group or actor.
      # Supersedes `performers`.
      def performer=(value)
        write_property(:performer, value)
      end

      # The main performer or performers of the event&#x2014;for example, a presenter, musician, or actor.
      # Superseded by `performer`.
      def performers
        read_property(:performers)
      end

      # The main performer or performers of the event&#x2014;for example, a presenter, musician, or actor.
      # Superseded by `performer`.
      def performers=(value)
        write_property(:performers, value)
      end

      # Used in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated.
      def previous_start_date
        read_property(:previous_start_date)
      end

      # Used in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated.
      def previous_start_date=(value)
        write_property(:previous_start_date, value)
      end

      # The CreativeWork that captured all or part of this Event.
      # Inverse-property: `recordedAt`.
      def recorded_in
        read_property(:recorded_in)
      end

      # The CreativeWork that captured all or part of this Event.
      # Inverse-property: `recordedAt`.
      def recorded_in=(value)
        write_property(:recorded_in, value)
      end

      # The number of attendee places for an event that remain unallocated.
      def remaining_attendee_capacity
        read_property(:remaining_attendee_capacity)
      end

      # The number of attendee places for an event that remain unallocated.
      def remaining_attendee_capacity=(value)
        write_property(:remaining_attendee_capacity, value)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review
        read_property(:review)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review=(value)
        write_property(:review, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end

      # An Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference.
      # Supersedes `subEvents`.
      # Inverse-property: `superEvent`.
      def sub_event
        read_property(:sub_event)
      end

      # An Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference.
      # Supersedes `subEvents`.
      # Inverse-property: `superEvent`.
      def sub_event=(value)
        write_property(:sub_event, value)
      end

      # Events that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference.
      # Superseded by `subEvent`.
      def sub_events
        read_property(:sub_events)
      end

      # Events that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference.
      # Superseded by `subEvent`.
      def sub_events=(value)
        write_property(:sub_events, value)
      end

      # An event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent.
      # Inverse-property: `subEvent`.
      def super_event
        read_property(:super_event)
      end

      # An event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent.
      # Inverse-property: `subEvent`.
      def super_event=(value)
        write_property(:super_event, value)
      end

      # Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.
      def translator
        read_property(:translator)
      end

      # Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.
      def translator=(value)
        write_property(:translator, value)
      end

      # The typical expected age range, e.g. '7-9', '11-'.
      def typical_age_range
        read_property(:typical_age_range)
      end

      # The typical expected age range, e.g. '7-9', '11-'.
      def typical_age_range=(value)
        write_property(:typical_age_range, value)
      end

      # A work featured in some event, e.g. exhibited in an ExhibitionEvent.
      #        Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent).
      def work_featured
        read_property(:work_featured)
      end

      # A work featured in some event, e.g. exhibited in an ExhibitionEvent.
      #        Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent).
      def work_featured=(value)
        write_property(:work_featured, value)
      end

      # A work performed in some event, for example a play performed in a TheaterEvent.
      def work_performed
        read_property(:work_performed)
      end

      # A work performed in some event, for example a play performed in a TheaterEvent.
      def work_performed=(value)
        write_property(:work_performed, value)
      end
    end
  end
end
