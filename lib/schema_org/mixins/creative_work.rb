module SchemaOrg
  module Mixins
    module CreativeWork
      include Thing

      def self.schema_property_definitions
        {
          :about => {
            schema_name: "about",
            ranges: ["Thing"],
          }.freeze,
          :access_mode => {
            schema_name: "accessMode",
            ranges: ["Text"],
          }.freeze,
          :access_mode_sufficient => {
            schema_name: "accessModeSufficient",
            ranges: ["ItemList"],
          }.freeze,
          :accessibility_api => {
            schema_name: "accessibilityAPI",
            ranges: ["Text"],
          }.freeze,
          :accessibility_control => {
            schema_name: "accessibilityControl",
            ranges: ["Text"],
          }.freeze,
          :accessibility_feature => {
            schema_name: "accessibilityFeature",
            ranges: ["Text"],
          }.freeze,
          :accessibility_hazard => {
            schema_name: "accessibilityHazard",
            ranges: ["Text"],
          }.freeze,
          :accessibility_summary => {
            schema_name: "accessibilitySummary",
            ranges: ["Text"],
          }.freeze,
          :accountable_person => {
            schema_name: "accountablePerson",
            ranges: ["Person"],
          }.freeze,
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :alternative_headline => {
            schema_name: "alternativeHeadline",
            ranges: ["Text"],
          }.freeze,
          :associated_media => {
            schema_name: "associatedMedia",
            ranges: ["MediaObject"],
          }.freeze,
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :audio => {
            schema_name: "audio",
            ranges: ["AudioObject", "Clip"],
          }.freeze,
          :author => {
            schema_name: "author",
            ranges: ["Organization", "Person"],
          }.freeze,
          :award => {
            schema_name: "award",
            ranges: ["Text"],
          }.freeze,
          :awards => {
            schema_name: "awards",
            ranges: ["Text"],
          }.freeze,
          :character => {
            schema_name: "character",
            ranges: ["Person"],
          }.freeze,
          :citation => {
            schema_name: "citation",
            ranges: ["CreativeWork", "Text"],
          }.freeze,
          :comment => {
            schema_name: "comment",
            ranges: ["Comment"],
          }.freeze,
          :comment_count => {
            schema_name: "commentCount",
            ranges: ["Integer"],
          }.freeze,
          :content_location => {
            schema_name: "contentLocation",
            ranges: ["Place"],
          }.freeze,
          :content_rating => {
            schema_name: "contentRating",
            ranges: ["Rating", "Text"],
          }.freeze,
          :contributor => {
            schema_name: "contributor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :copyright_holder => {
            schema_name: "copyrightHolder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :copyright_year => {
            schema_name: "copyrightYear",
            ranges: ["Number"],
          }.freeze,
          :country_of_origin => {
            schema_name: "countryOfOrigin",
            ranges: ["Country"],
          }.freeze,
          :creator => {
            schema_name: "creator",
            ranges: ["Organization", "Person"],
          }.freeze,
          :date_created => {
            schema_name: "dateCreated",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :date_modified => {
            schema_name: "dateModified",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :date_published => {
            schema_name: "datePublished",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :discussion_url => {
            schema_name: "discussionUrl",
            ranges: ["URL"],
          }.freeze,
          :editor => {
            schema_name: "editor",
            ranges: ["Person"],
          }.freeze,
          :educational_alignment => {
            schema_name: "educationalAlignment",
            ranges: ["AlignmentObject"],
          }.freeze,
          :educational_use => {
            schema_name: "educationalUse",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :encoding => {
            schema_name: "encoding",
            ranges: ["MediaObject"],
          }.freeze,
          :encoding_format => {
            schema_name: "encodingFormat",
            ranges: ["Text", "URL"],
          }.freeze,
          :encodings => {
            schema_name: "encodings",
            ranges: ["MediaObject"],
          }.freeze,
          :example_of_work => {
            schema_name: "exampleOfWork",
            ranges: ["CreativeWork"],
          }.freeze,
          :expires => {
            schema_name: "expires",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :file_format => {
            schema_name: "fileFormat",
            ranges: ["Text", "URL"],
          }.freeze,
          :funder => {
            schema_name: "funder",
            ranges: ["Organization", "Person"],
          }.freeze,
          :genre => {
            schema_name: "genre",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :has_part => {
            schema_name: "hasPart",
            ranges: ["CreativeWork"],
          }.freeze,
          :headline => {
            schema_name: "headline",
            ranges: ["Text"],
          }.freeze,
          :in_language => {
            schema_name: "inLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :interaction_statistic => {
            schema_name: "interactionStatistic",
            ranges: ["InteractionCounter"],
          }.freeze,
          :interactivity_type => {
            schema_name: "interactivityType",
            ranges: ["Text"],
          }.freeze,
          :is_accessible_for_free => {
            schema_name: "isAccessibleForFree",
            ranges: ["Boolean"],
          }.freeze,
          :is_based_on => {
            schema_name: "isBasedOn",
            ranges: ["CreativeWork", "Product", "URL"],
          }.freeze,
          :is_based_on_url => {
            schema_name: "isBasedOnUrl",
            ranges: ["CreativeWork", "Product", "URL"],
          }.freeze,
          :is_family_friendly => {
            schema_name: "isFamilyFriendly",
            ranges: ["Boolean"],
          }.freeze,
          :is_part_of => {
            schema_name: "isPartOf",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :keywords => {
            schema_name: "keywords",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :learning_resource_type => {
            schema_name: "learningResourceType",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :license => {
            schema_name: "license",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :location_created => {
            schema_name: "locationCreated",
            ranges: ["Place"],
          }.freeze,
          :main_entity => {
            schema_name: "mainEntity",
            ranges: ["Thing"],
          }.freeze,
          :material => {
            schema_name: "material",
            ranges: ["Product", "Text", "URL"],
          }.freeze,
          :mentions => {
            schema_name: "mentions",
            ranges: ["Thing"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :position => {
            schema_name: "position",
            ranges: ["Integer", "Text"],
          }.freeze,
          :producer => {
            schema_name: "producer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :publication => {
            schema_name: "publication",
            ranges: ["PublicationEvent"],
          }.freeze,
          :publisher => {
            schema_name: "publisher",
            ranges: ["Organization", "Person"],
          }.freeze,
          :publishing_principles => {
            schema_name: "publishingPrinciples",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :recorded_at => {
            schema_name: "recordedAt",
            ranges: ["Event"],
          }.freeze,
          :released_event => {
            schema_name: "releasedEvent",
            ranges: ["PublicationEvent"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :reviews => {
            schema_name: "reviews",
            ranges: ["Review"],
          }.freeze,
          :schema_version => {
            schema_name: "schemaVersion",
            ranges: ["Text", "URL"],
          }.freeze,
          :source_organization => {
            schema_name: "sourceOrganization",
            ranges: ["Organization"],
          }.freeze,
          :spatial => {
            schema_name: "spatial",
            ranges: ["Place"],
          }.freeze,
          :spatial_coverage => {
            schema_name: "spatialCoverage",
            ranges: ["Place"],
          }.freeze,
          :sponsor => {
            schema_name: "sponsor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :temporal => {
            schema_name: "temporal",
            ranges: ["DateTime", "Text"],
          }.freeze,
          :temporal_coverage => {
            schema_name: "temporalCoverage",
            ranges: ["DateTime", "Text", "URL"],
          }.freeze,
          :text => {
            schema_name: "text",
            ranges: ["Text"],
          }.freeze,
          :thumbnail => {
            schema_name: "thumbnail",
            ranges: ["ImageObject"],
          }.freeze,
          :thumbnail_url => {
            schema_name: "thumbnailUrl",
            ranges: ["URL"],
          }.freeze,
          :time_required => {
            schema_name: "timeRequired",
            ranges: ["Duration"],
          }.freeze,
          :translator => {
            schema_name: "translator",
            ranges: ["Organization", "Person"],
          }.freeze,
          :typical_age_range => {
            schema_name: "typicalAgeRange",
            ranges: ["Text"],
          }.freeze,
          :version => {
            schema_name: "version",
            ranges: ["Number", "Text"],
          }.freeze,
          :video => {
            schema_name: "video",
            ranges: ["Clip", "VideoObject"],
          }.freeze,
          :word_count => {
            schema_name: "wordCount",
            ranges: ["Integer"],
          }.freeze,
          :work_example => {
            schema_name: "workExample",
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

      def access_mode
        read_property(:access_mode)
      end

      def access_mode=(value)
        write_property(:access_mode, value)
      end

      def access_mode_sufficient
        read_property(:access_mode_sufficient)
      end

      def access_mode_sufficient=(value)
        write_property(:access_mode_sufficient, value)
      end

      def accessibility_api
        read_property(:accessibility_api)
      end

      def accessibility_api=(value)
        write_property(:accessibility_api, value)
      end

      def accessibility_control
        read_property(:accessibility_control)
      end

      def accessibility_control=(value)
        write_property(:accessibility_control, value)
      end

      def accessibility_feature
        read_property(:accessibility_feature)
      end

      def accessibility_feature=(value)
        write_property(:accessibility_feature, value)
      end

      def accessibility_hazard
        read_property(:accessibility_hazard)
      end

      def accessibility_hazard=(value)
        write_property(:accessibility_hazard, value)
      end

      def accessibility_summary
        read_property(:accessibility_summary)
      end

      def accessibility_summary=(value)
        write_property(:accessibility_summary, value)
      end

      def accountable_person
        read_property(:accountable_person)
      end

      def accountable_person=(value)
        write_property(:accountable_person, value)
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def alternative_headline
        read_property(:alternative_headline)
      end

      def alternative_headline=(value)
        write_property(:alternative_headline, value)
      end

      def associated_media
        read_property(:associated_media)
      end

      def associated_media=(value)
        write_property(:associated_media, value)
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
      end

      def audio
        read_property(:audio)
      end

      def audio=(value)
        write_property(:audio, value)
      end

      def author
        read_property(:author)
      end

      def author=(value)
        write_property(:author, value)
      end

      def award
        read_property(:award)
      end

      def award=(value)
        write_property(:award, value)
      end

      def awards
        read_property(:awards)
      end

      def awards=(value)
        write_property(:awards, value)
      end

      def character
        read_property(:character)
      end

      def character=(value)
        write_property(:character, value)
      end

      def citation
        read_property(:citation)
      end

      def citation=(value)
        write_property(:citation, value)
      end

      def comment
        read_property(:comment)
      end

      def comment=(value)
        write_property(:comment, value)
      end

      def comment_count
        read_property(:comment_count)
      end

      def comment_count=(value)
        write_property(:comment_count, value)
      end

      def content_location
        read_property(:content_location)
      end

      def content_location=(value)
        write_property(:content_location, value)
      end

      def content_rating
        read_property(:content_rating)
      end

      def content_rating=(value)
        write_property(:content_rating, value)
      end

      def contributor
        read_property(:contributor)
      end

      def contributor=(value)
        write_property(:contributor, value)
      end

      def copyright_holder
        read_property(:copyright_holder)
      end

      def copyright_holder=(value)
        write_property(:copyright_holder, value)
      end

      def copyright_year
        read_property(:copyright_year)
      end

      def copyright_year=(value)
        write_property(:copyright_year, value)
      end

      def country_of_origin
        read_property(:country_of_origin)
      end

      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      def creator
        read_property(:creator)
      end

      def creator=(value)
        write_property(:creator, value)
      end

      def date_created
        read_property(:date_created)
      end

      def date_created=(value)
        write_property(:date_created, value)
      end

      def date_modified
        read_property(:date_modified)
      end

      def date_modified=(value)
        write_property(:date_modified, value)
      end

      def date_published
        read_property(:date_published)
      end

      def date_published=(value)
        write_property(:date_published, value)
      end

      def discussion_url
        read_property(:discussion_url)
      end

      def discussion_url=(value)
        write_property(:discussion_url, value)
      end

      def editor
        read_property(:editor)
      end

      def editor=(value)
        write_property(:editor, value)
      end

      def educational_alignment
        read_property(:educational_alignment)
      end

      def educational_alignment=(value)
        write_property(:educational_alignment, value)
      end

      def educational_use
        read_property(:educational_use)
      end

      def educational_use=(value)
        write_property(:educational_use, value)
      end

      def encoding
        read_property(:encoding)
      end

      def encoding=(value)
        write_property(:encoding, value)
      end

      def encoding_format
        read_property(:encoding_format)
      end

      def encoding_format=(value)
        write_property(:encoding_format, value)
      end

      def encodings
        read_property(:encodings)
      end

      def encodings=(value)
        write_property(:encodings, value)
      end

      def example_of_work
        read_property(:example_of_work)
      end

      def example_of_work=(value)
        write_property(:example_of_work, value)
      end

      def expires
        read_property(:expires)
      end

      def expires=(value)
        write_property(:expires, value)
      end

      def file_format
        read_property(:file_format)
      end

      def file_format=(value)
        write_property(:file_format, value)
      end

      def funder
        read_property(:funder)
      end

      def funder=(value)
        write_property(:funder, value)
      end

      def genre
        read_property(:genre)
      end

      def genre=(value)
        write_property(:genre, value)
      end

      def has_part
        read_property(:has_part)
      end

      def has_part=(value)
        write_property(:has_part, value)
      end

      def headline
        read_property(:headline)
      end

      def headline=(value)
        write_property(:headline, value)
      end

      def in_language
        read_property(:in_language)
      end

      def in_language=(value)
        write_property(:in_language, value)
      end

      def interaction_statistic
        read_property(:interaction_statistic)
      end

      def interaction_statistic=(value)
        write_property(:interaction_statistic, value)
      end

      def interactivity_type
        read_property(:interactivity_type)
      end

      def interactivity_type=(value)
        write_property(:interactivity_type, value)
      end

      def is_accessible_for_free
        read_property(:is_accessible_for_free)
      end

      def is_accessible_for_free=(value)
        write_property(:is_accessible_for_free, value)
      end

      def is_based_on
        read_property(:is_based_on)
      end

      def is_based_on=(value)
        write_property(:is_based_on, value)
      end

      def is_based_on_url
        read_property(:is_based_on_url)
      end

      def is_based_on_url=(value)
        write_property(:is_based_on_url, value)
      end

      def is_family_friendly
        read_property(:is_family_friendly)
      end

      def is_family_friendly=(value)
        write_property(:is_family_friendly, value)
      end

      def is_part_of
        read_property(:is_part_of)
      end

      def is_part_of=(value)
        write_property(:is_part_of, value)
      end

      def keywords
        read_property(:keywords)
      end

      def keywords=(value)
        write_property(:keywords, value)
      end

      def learning_resource_type
        read_property(:learning_resource_type)
      end

      def learning_resource_type=(value)
        write_property(:learning_resource_type, value)
      end

      def license
        read_property(:license)
      end

      def license=(value)
        write_property(:license, value)
      end

      def location_created
        read_property(:location_created)
      end

      def location_created=(value)
        write_property(:location_created, value)
      end

      def main_entity
        read_property(:main_entity)
      end

      def main_entity=(value)
        write_property(:main_entity, value)
      end

      def material
        read_property(:material)
      end

      def material=(value)
        write_property(:material, value)
      end

      def mentions
        read_property(:mentions)
      end

      def mentions=(value)
        write_property(:mentions, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

      def position
        read_property(:position)
      end

      def position=(value)
        write_property(:position, value)
      end

      def producer
        read_property(:producer)
      end

      def producer=(value)
        write_property(:producer, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def publication
        read_property(:publication)
      end

      def publication=(value)
        write_property(:publication, value)
      end

      def publisher
        read_property(:publisher)
      end

      def publisher=(value)
        write_property(:publisher, value)
      end

      def publishing_principles
        read_property(:publishing_principles)
      end

      def publishing_principles=(value)
        write_property(:publishing_principles, value)
      end

      def recorded_at
        read_property(:recorded_at)
      end

      def recorded_at=(value)
        write_property(:recorded_at, value)
      end

      def released_event
        read_property(:released_event)
      end

      def released_event=(value)
        write_property(:released_event, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def reviews
        read_property(:reviews)
      end

      def reviews=(value)
        write_property(:reviews, value)
      end

      def schema_version
        read_property(:schema_version)
      end

      def schema_version=(value)
        write_property(:schema_version, value)
      end

      def source_organization
        read_property(:source_organization)
      end

      def source_organization=(value)
        write_property(:source_organization, value)
      end

      def spatial
        read_property(:spatial)
      end

      def spatial=(value)
        write_property(:spatial, value)
      end

      def spatial_coverage
        read_property(:spatial_coverage)
      end

      def spatial_coverage=(value)
        write_property(:spatial_coverage, value)
      end

      def sponsor
        read_property(:sponsor)
      end

      def sponsor=(value)
        write_property(:sponsor, value)
      end

      def temporal
        read_property(:temporal)
      end

      def temporal=(value)
        write_property(:temporal, value)
      end

      def temporal_coverage
        read_property(:temporal_coverage)
      end

      def temporal_coverage=(value)
        write_property(:temporal_coverage, value)
      end

      def text
        read_property(:text)
      end

      def text=(value)
        write_property(:text, value)
      end

      def thumbnail
        read_property(:thumbnail)
      end

      def thumbnail=(value)
        write_property(:thumbnail, value)
      end

      def thumbnail_url
        read_property(:thumbnail_url)
      end

      def thumbnail_url=(value)
        write_property(:thumbnail_url, value)
      end

      def time_required
        read_property(:time_required)
      end

      def time_required=(value)
        write_property(:time_required, value)
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

      def version
        read_property(:version)
      end

      def version=(value)
        write_property(:version, value)
      end

      def video
        read_property(:video)
      end

      def video=(value)
        write_property(:video, value)
      end

      def word_count
        read_property(:word_count)
      end

      def word_count=(value)
        write_property(:word_count, value)
      end

      def work_example
        read_property(:work_example)
      end

      def work_example=(value)
        write_property(:work_example, value)
      end

    end
  end
end
