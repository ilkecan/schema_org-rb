require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicComposition
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :composer # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
        option :first_performance # The date and place the work was first performed.
        option :included_composition # Smaller compositions included in this work (e.g. a movement in a symphony).
        option :iswc_code # The International Standard Musical Work Code for the composition.
        option :lyricist # The person who wrote the words.
        option :lyrics # The words in the song.
        option :music_arrangement # An arrangement derived from the composition.
        option :music_composition_form # The type of composition (e.g. overture, sonata, symphony, etc.).
        option :musical_key # The key, mode, or scale this composition uses.
        option :recorded_as # An audio recording of the work.
      end
    end
  end
end
