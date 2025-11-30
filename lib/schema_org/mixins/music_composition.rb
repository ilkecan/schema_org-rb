require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicComposition
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :composer, optional: true # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
        option :first_performance, optional: true # The date and place the work was first performed.
        option :included_composition, optional: true # Smaller compositions included in this work (e.g. a movement in a symphony).
        option :iswc_code, optional: true # The International Standard Musical Work Code for the composition.
        option :lyricist, optional: true # The person who wrote the words.
        option :lyrics, optional: true # The words in the song.
        option :music_arrangement, optional: true # An arrangement derived from the composition.
        option :music_composition_form, optional: true # The type of composition (e.g. overture, sonata, symphony, etc.).
        option :musical_key, optional: true # The key, mode, or scale this composition uses.
        option :recorded_as, optional: true # An audio recording of the work. Inverse-property: `recording_of`.
      end
    end
  end
end
