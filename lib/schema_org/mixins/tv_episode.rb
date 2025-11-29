require "active_support/concern"

module SchemaOrg
  module Mixins
    module TVEpisode
      extend ActiveSupport::Concern

      include Episode

      included do
        option :country_of_origin # The country of origin of something, including products as well as creative  works such as movie and TV content.  In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.  In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
        option :part_of_tv_series # The TV series to which this episode or season belongs.
        option :subtitle_language # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
      end
    end
  end
end
