require "active_support/concern"

module SchemaOrg
  module Mixins
    module Event
      extend ActiveSupport::Concern

      include Thing

      included do
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :attendees # A person attending the event.
        option :composer # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
        option :contributor # A secondary contributor to the CreativeWork or Event.
        option :door_time # The time admission will commence.
        option :end_date # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :event_status # An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
        option :funder # A person or organization that supports (sponsors) something through some kind of financial contribution.
        option :keywords # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
        option :maximum_attendee_capacity # The total number of individuals that may attend an event or venue.
        option :organizer # An organizer of an Event.
        option :performers # The main performer or performers of the event&#x2014;for example, a presenter, musician, or actor.
        option :previous_start_date # Used in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated.
        option :remaining_attendee_capacity # The number of attendee places for an event that remain unallocated.
        option :start_date # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :sub_events # Events that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference.
        option :translator # Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.
        option :typical_age_range # The typical expected age range, e.g. '7-9', '11-'.
        option :work_performed # A work performed in some event, for example a play performed in a TheaterEvent.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
        option :attendee # A person or organization attending the event.
        option :audience # An intended audience, i.e. a group for whom something was created.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
        option :duration # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :in_language # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
        option :is_accessible_for_free # A flag to signal that the item, event, or place is accessible for free.
        option :offers # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
        option :performer # A performer at the event&#x2014;for example, a presenter, musician, musical group or actor.
        option :recorded_in # The CreativeWork that captured all or part of this Event.
        option :review # A review of the item.
        option :sponsor # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
        option :super_event # An event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent.
        option :about # The subject matter of the content.
        option :sub_event # An Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference.
        option :work_featured # A work featured in some event, e.g. exhibited in an ExhibitionEvent.        Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent).
        option :location # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      end
    end
  end
end
