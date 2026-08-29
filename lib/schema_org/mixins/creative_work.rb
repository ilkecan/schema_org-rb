# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module CreativeWork
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
          abstract: {
            schema_name: "abstract",
            schema_url: "https://schema.org/abstract",
            comment_lines: ["An abstract is a short description that summarizes a [[CreativeWork]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          access_mode: {
            schema_name: "accessMode",
            schema_url: "https://schema.org/accessMode",
            comment_lines: ["The human sensory perceptual system or cognitive faculty through which a person may process or perceive the intellectual content of a resource, not including any adaptations of the content (e.g., text alternatives for images). Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          access_mode_sufficient: {
            schema_name: "accessModeSufficient",
            schema_url: "https://schema.org/accessModeSufficient",
            comment_lines: ["A list of single or combined access modes that are sufficient to understand all the intellectual content of a resource, including any adaptations. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary)."].freeze,
            ranges: ["ItemList"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accessibility_api: {
            schema_name: "accessibilityAPI",
            schema_url: "https://schema.org/accessibilityAPI",
            comment_lines: ["Indicates that the resource is compatible with the referenced accessibility API. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accessibility_control: {
            schema_name: "accessibilityControl",
            schema_url: "https://schema.org/accessibilityControl",
            comment_lines: ["Identifies input methods that are sufficient to fully control the described resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accessibility_feature: {
            schema_name: "accessibilityFeature",
            schema_url: "https://schema.org/accessibilityFeature",
            comment_lines: ["Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accessibility_hazard: {
            schema_name: "accessibilityHazard",
            schema_url: "https://schema.org/accessibilityHazard",
            comment_lines: ["A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accessibility_summary: {
            schema_name: "accessibilitySummary",
            schema_url: "https://schema.org/accessibilitySummary",
            comment_lines: ["A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as \"short descriptions are present but long descriptions will be needed for non-visual users\" or \"short descriptions are present and no long descriptions are needed\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accountable_person: {
            schema_name: "accountablePerson",
            schema_url: "https://schema.org/accountablePerson",
            comment_lines: ["Specifies the Person that is legally accountable for the CreativeWork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          acquire_license_page: {
            schema_name: "acquireLicensePage",
            schema_url: "https://schema.org/acquireLicensePage",
            comment_lines: ["Indicates a page documenting how licenses can be purchased or otherwise acquired, for the current item."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          alternative_headline: {
            schema_name: "alternativeHeadline",
            schema_url: "https://schema.org/alternativeHeadline",
            comment_lines: ["A secondary title of the CreativeWork."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          archived_at: {
            schema_name: "archivedAt",
            schema_url: "https://schema.org/archivedAt",
            comment_lines: ["Indicates a page or other link involved in archival of a [[CreativeWork]]. In the case of [[MediaReview]], the items in a [[MediaReviewItem]] may often become inaccessible, but be archived by archival, journalistic, activist, or law enforcement organizations. In such cases, the referenced page may not directly publish the content."].freeze,
            ranges: ["URL", "WebPage"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          assesses: {
            schema_name: "assesses",
            schema_url: "https://schema.org/assesses",
            comment_lines: ["The item being described is intended to assess the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          associated_media: {
            schema_name: "associatedMedia",
            schema_url: "https://schema.org/associatedMedia",
            comment_lines: ["A media object that encodes this CreativeWork. This property is a synonym for encoding."].freeze,
            ranges: ["MediaObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
            supersedes: ["serviceAudience"].freeze
          }.freeze,
          audio: {
            schema_name: "audio",
            schema_url: "https://schema.org/audio",
            comment_lines: ["An embedded audio object."].freeze,
            ranges: ["AudioObject", "Clip", "MusicRecording"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          author: {
            schema_name: "author",
            schema_url: "https://schema.org/author",
            comment_lines: ["The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          award: {
            schema_name: "award",
            schema_url: "https://schema.org/award",
            comment_lines: ["An award won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["awards"].freeze
          }.freeze,
          awards: {
            schema_name: "awards",
            schema_url: "https://schema.org/awards",
            comment_lines: ["Awards won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "award",
            supersedes: nil
          }.freeze,
          character: {
            schema_name: "character",
            schema_url: "https://schema.org/character",
            comment_lines: ["Fictional person connected with a creative work."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          citation: {
            schema_name: "citation",
            schema_url: "https://schema.org/citation",
            comment_lines: ["A citation or reference to another creative work, such as another publication, web page, scholarly article, etc."].freeze,
            ranges: ["CreativeWork", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          comment: {
            schema_name: "comment",
            schema_url: "https://schema.org/comment",
            comment_lines: ["Comments, typically from users."].freeze,
            ranges: ["Comment"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          comment_count: {
            schema_name: "commentCount",
            schema_url: "https://schema.org/commentCount",
            comment_lines: ["The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          conditions_of_access: {
            schema_name: "conditionsOfAccess",
            schema_url: "https://schema.org/conditionsOfAccess",
            comment_lines: ["Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an [[ArchiveComponent]] held by an [[ArchiveOrganization]]. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.\\n\\nFor example \"Available by appointment from the Reading Room\" or \"Accessible only from logged-in accounts \"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          content_location: {
            schema_name: "contentLocation",
            schema_url: "https://schema.org/contentLocation",
            comment_lines: ["The location depicted or described in the content. For example, the location in a photograph or painting."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          content_rating: {
            schema_name: "contentRating",
            schema_url: "https://schema.org/contentRating",
            comment_lines: ["Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'."].freeze,
            ranges: ["Rating", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          content_reference_time: {
            schema_name: "contentReferenceTime",
            schema_url: "https://schema.org/contentReferenceTime",
            comment_lines: ["The specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event."].freeze,
            ranges: ["DateTime"].freeze,
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
          copyright_holder: {
            schema_name: "copyrightHolder",
            schema_url: "https://schema.org/copyrightHolder",
            comment_lines: ["The party holding the legal copyright to the CreativeWork."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          copyright_notice: {
            schema_name: "copyrightNotice",
            schema_url: "https://schema.org/copyrightNotice",
            comment_lines: ["Text of a notice appropriate for describing the copyright aspects of this Creative Work, ideally indicating the owner of the copyright for the Work."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          copyright_year: {
            schema_name: "copyrightYear",
            schema_url: "https://schema.org/copyrightYear",
            comment_lines: ["The year during which the claimed copyright for the CreativeWork was first asserted."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          correction: {
            schema_name: "correction",
            schema_url: "https://schema.org/correction",
            comment_lines: ["Indicates a correction to a [[CreativeWork]], either via a [[CorrectionComment]], textually or in another document."].freeze,
            ranges: ["CorrectionComment", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          country_of_origin: {
            schema_name: "countryOfOrigin",
            schema_url: "https://schema.org/countryOfOrigin",
            comment_lines: ["The country of origin of something, including products as well as creative  works such as movie and TV content.", "", "In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.", "", "In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here."].freeze,
            ranges: ["Country"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          creative_work_status: {
            schema_name: "creativeWorkStatus",
            schema_url: "https://schema.org/creativeWorkStatus",
            comment_lines: ["The status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          creator: {
            schema_name: "creator",
            schema_url: "https://schema.org/creator",
            comment_lines: ["The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          credit_text: {
            schema_name: "creditText",
            schema_url: "https://schema.org/creditText",
            comment_lines: ["Text that can be used to credit person(s) and/or organization(s) associated with a published Creative Work."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_created: {
            schema_name: "dateCreated",
            schema_url: "https://schema.org/dateCreated",
            comment_lines: ["The date on which the CreativeWork was created or the item was added to a DataFeed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_modified: {
            schema_name: "dateModified",
            schema_url: "https://schema.org/dateModified",
            comment_lines: ["The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_published: {
            schema_name: "datePublished",
            schema_url: "https://schema.org/datePublished",
            comment_lines: ["Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          digital_source_type: {
            schema_name: "digitalSourceType",
            schema_url: "https://schema.org/digitalSourceType",
            comment_lines: ["Indicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some [[CreativeWork]]."].freeze,
            ranges: ["IPTCDigitalSourceEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          discussion_url: {
            schema_name: "discussionUrl",
            schema_url: "https://schema.org/discussionUrl",
            comment_lines: ["A link to the page containing the comments of the CreativeWork."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          display_location: {
            schema_name: "displayLocation",
            schema_url: "https://schema.org/displayLocation",
            comment_lines: ["The location at which an item can be viewed or experienced in-person."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          edit_eidr: {
            schema_name: "editEIDR",
            schema_url: "https://schema.org/editEIDR",
            comment_lines: ["An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing a specific edit / edition for a work of film or television.", "", "For example, the motion picture known as \"Ghostbusters\" whose [[titleEIDR]] is \"10.5240/7EC7-228A-510A-053E-CBB8-J\" has several edits, e.g. \"10.5240/1F2A-E1C5-680A-14C6-E76B-I\" and \"10.5240/8A35-3BEE-6497-5D12-9E4F-3\".", "", "Since schema.org types like [[Movie]] and [[TVEpisode]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          editor: {
            schema_name: "editor",
            schema_url: "https://schema.org/editor",
            comment_lines: ["Specifies the Person who edited the CreativeWork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_alignment: {
            schema_name: "educationalAlignment",
            schema_url: "https://schema.org/educationalAlignment",
            comment_lines: ["An alignment to an established educational framework.", "", "This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency."].freeze,
            ranges: ["AlignmentObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_level: {
            schema_name: "educationalLevel",
            schema_url: "https://schema.org/educationalLevel",
            comment_lines: ["The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_use: {
            schema_name: "educationalUse",
            schema_url: "https://schema.org/educationalUse",
            comment_lines: ["The purpose of a work in the context of education; for example, 'assignment', 'group work'."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          encoding: {
            schema_name: "encoding",
            schema_url: "https://schema.org/encoding",
            comment_lines: ["A media object that encodes this CreativeWork. This property is a synonym for associatedMedia."].freeze,
            ranges: ["MediaObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: "encodesCreativeWork",
            superseded_by: nil,
            supersedes: ["encodings"].freeze
          }.freeze,
          encoding_format: {
            schema_name: "encodingFormat",
            schema_url: "https://schema.org/encodingFormat",
            comment_lines: ["Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.", "", "In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.", "", "Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["fileFormat"].freeze
          }.freeze,
          encodings: {
            schema_name: "encodings",
            schema_url: "https://schema.org/encodings",
            comment_lines: ["A media object that encodes this CreativeWork."].freeze,
            ranges: ["MediaObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "encoding",
            supersedes: nil
          }.freeze,
          example_of_work: {
            schema_name: "exampleOfWork",
            schema_url: "https://schema.org/exampleOfWork",
            comment_lines: ["A creative work that this work is an example/instance/realization/derivation of."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "workExample",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expires: {
            schema_name: "expires",
            schema_url: "https://schema.org/expires",
            comment_lines: ["Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          file_format: {
            schema_name: "fileFormat",
            schema_url: "https://schema.org/fileFormat",
            comment_lines: ["Media type, typically MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of the content, e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, 'encoding' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "encodingFormat",
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
          genre: {
            schema_name: "genre",
            schema_url: "https://schema.org/genre",
            comment_lines: ["Genre of the creative work, broadcast channel or group."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_part: {
            schema_name: "hasPart",
            schema_url: "https://schema.org/hasPart",
            comment_lines: ["Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense)."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "isPartOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          headline: {
            schema_name: "headline",
            schema_url: "https://schema.org/headline",
            comment_lines: ["Headline of the article."].freeze,
            ranges: ["Text"].freeze,
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
            supersedes: ["language"].freeze
          }.freeze,
          interaction_statistic: {
            schema_name: "interactionStatistic",
            schema_url: "https://schema.org/interactionStatistic",
            comment_lines: ["The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used."].freeze,
            ranges: ["InteractionCounter"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["interactionCount"].freeze
          }.freeze,
          interactivity_type: {
            schema_name: "interactivityType",
            schema_url: "https://schema.org/interactivityType",
            comment_lines: ["The predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interpreted_as_claim: {
            schema_name: "interpretedAsClaim",
            schema_url: "https://schema.org/interpretedAsClaim",
            comment_lines: ["Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]]."].freeze,
            ranges: ["Claim"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_accessible_for_free: {
            schema_name: "isAccessibleForFree",
            schema_url: "https://schema.org/isAccessibleForFree",
            comment_lines: ["A flag to signal that the item, event, or place is accessible for free."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["free"].freeze
          }.freeze,
          is_based_on: {
            schema_name: "isBasedOn",
            schema_url: "https://schema.org/isBasedOn",
            comment_lines: ["A resource from which this work is derived or from which it is a modification or adaptation."].freeze,
            ranges: ["CreativeWork", "Product", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["isBasedOnUrl"].freeze
          }.freeze,
          is_based_on_url: {
            schema_name: "isBasedOnUrl",
            schema_url: "https://schema.org/isBasedOnUrl",
            comment_lines: ["A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html."].freeze,
            ranges: ["CreativeWork", "Product", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "isBasedOn",
            supersedes: nil
          }.freeze,
          is_family_friendly: {
            schema_name: "isFamilyFriendly",
            schema_url: "https://schema.org/isFamilyFriendly",
            comment_lines: ["Indicates whether this content is family friendly."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_part_of: {
            schema_name: "isPartOf",
            schema_url: "https://schema.org/isPartOf",
            comment_lines: ["Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasPart",
            superseded_by: nil,
            supersedes: nil
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
          learning_resource_type: {
            schema_name: "learningResourceType",
            schema_url: "https://schema.org/learningResourceType",
            comment_lines: ["The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          license: {
            schema_name: "license",
            schema_url: "https://schema.org/license",
            comment_lines: ["A license document that applies to this content, typically indicated by URL."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          location_created: {
            schema_name: "locationCreated",
            schema_url: "https://schema.org/locationCreated",
            comment_lines: ["The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          main_entity: {
            schema_name: "mainEntity",
            schema_url: "https://schema.org/mainEntity",
            comment_lines: ["Indicates the primary entity described in some page or other CreativeWork."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: "mainEntityOfPage",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maintainer: {
            schema_name: "maintainer",
            schema_url: "https://schema.org/maintainer",
            comment_lines: ["A maintainer of a [[Dataset]], software package ([[SoftwareApplication]]), or other [[Project]]. A maintainer is a [[Person]] or [[Organization]] that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on \"upstream\" sources. When [[maintainer]] is applied to a specific version of something e.g. a particular version or packaging of a [[Dataset]], it is always  possible that the upstream source has a different maintainer. The [[isBasedOn]] property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          material: {
            schema_name: "material",
            schema_url: "https://schema.org/material",
            comment_lines: ["A material that something is made from, e.g. leather, wool, cotton, paper."].freeze,
            ranges: ["Product", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          material_extent: {
            schema_name: "materialExtent",
            schema_url: "https://schema.org/materialExtent",
            comment_lines: ["The quantity of the materials being described or an expression of the physical space they occupy."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mentions: {
            schema_name: "mentions",
            schema_url: "https://schema.org/mentions",
            comment_lines: ["Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept."].freeze,
            ranges: ["Thing"].freeze,
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
          pattern: {
            schema_name: "pattern",
            schema_url: "https://schema.org/pattern",
            comment_lines: ["A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          position: {
            schema_name: "position",
            schema_url: "https://schema.org/position",
            comment_lines: ["The position of an item in a series or sequence of items."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          producer: {
            schema_name: "producer",
            schema_url: "https://schema.org/producer",
            comment_lines: ["The person or organization who produced the work (e.g. music album, movie, TV/radio series etc.)."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["carrier"].freeze
          }.freeze,
          publication: {
            schema_name: "publication",
            schema_url: "https://schema.org/publication",
            comment_lines: ["A publication event associated with the item."].freeze,
            ranges: ["PublicationEvent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          publisher: {
            schema_name: "publisher",
            schema_url: "https://schema.org/publisher",
            comment_lines: ["The publisher of the article in question."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          publisher_imprint: {
            schema_name: "publisherImprint",
            schema_url: "https://schema.org/publisherImprint",
            comment_lines: ["The publishing division which published the comic."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          publishing_principles: {
            schema_name: "publishingPrinciples",
            schema_url: "https://schema.org/publishingPrinciples",
            comment_lines: ["The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].", "", "While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recorded_at: {
            schema_name: "recordedAt",
            schema_url: "https://schema.org/recordedAt",
            comment_lines: ["The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: "recordedIn",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          released_event: {
            schema_name: "releasedEvent",
            schema_url: "https://schema.org/releasedEvent",
            comment_lines: ["The place and time the release was issued, expressed as a PublicationEvent."].freeze,
            ranges: ["PublicationEvent"].freeze,
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
            supersedes: ["reviews"].freeze
          }.freeze,
          reviews: {
            schema_name: "reviews",
            schema_url: "https://schema.org/reviews",
            comment_lines: ["Review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "review",
            supersedes: nil
          }.freeze,
          schema_version: {
            schema_name: "schemaVersion",
            schema_url: "https://schema.org/schemaVersion",
            comment_lines: ["Indicates (by URL or string) a particular version of a schema used in some CreativeWork. This property was created primarily to", "    indicate the use of a specific schema.org release, e.g. ```10.0``` as a simple string, or more explicitly via URL, ```https://schema.org/docs/releases.html#v10.0```. There may be situations in which other schemas might usefully be referenced this way, e.g. ```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this has not been carefully explored in the community."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sd_date_published: {
            schema_name: "sdDatePublished",
            schema_url: "https://schema.org/sdDatePublished",
            comment_lines: ["Indicates the date on which the current structured data was generated / published. Typically used alongside [[sdPublisher]]."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sd_license: {
            schema_name: "sdLicense",
            schema_url: "https://schema.org/sdLicense",
            comment_lines: ["A license document that applies to this structured data, typically indicated by URL."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sd_publisher: {
            schema_name: "sdPublisher",
            schema_url: "https://schema.org/sdPublisher",
            comment_lines: ["Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The", "[[sdPublisher]] property helps make such practices more explicit."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          size: {
            schema_name: "size",
            schema_url: "https://schema.org/size",
            comment_lines: ["A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable."].freeze,
            ranges: ["DefinedTerm", "QuantitativeValue", "SizeSpecification", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          source_organization: {
            schema_name: "sourceOrganization",
            schema_url: "https://schema.org/sourceOrganization",
            comment_lines: ["The Organization on whose behalf the creator was working."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          spatial: {
            schema_name: "spatial",
            schema_url: "https://schema.org/spatial",
            comment_lines: ["The \"spatial\" property can be used in cases when more specific properties", "(e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          spatial_coverage: {
            schema_name: "spatialCoverage",
            schema_url: "https://schema.org/spatialCoverage",
            comment_lines: ["The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of", "      contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates", "      areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          teaches: {
            schema_name: "teaches",
            schema_url: "https://schema.org/teaches",
            comment_lines: ["The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          temporal: {
            schema_name: "temporal",
            schema_url: "https://schema.org/temporal",
            comment_lines: ["The \"temporal\" property can be used in cases where more specific properties", "(e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate."].freeze,
            ranges: ["DateTime", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          temporal_coverage: {
            schema_name: "temporalCoverage",
            schema_url: "https://schema.org/temporalCoverage",
            comment_lines: ["The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in [ISO 8601 time interval format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In", "      the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written \"2011/2012\"). Other forms of content, e.g. ScholarlyArticle, Book, TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms - textually or via well-known URL.", "      Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via \"1939/1945\".", "", "Open-ended date ranges can be written with \"..\" in place of the end date. For example, \"2015-11/..\" indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated."].freeze,
            ranges: ["DateTime", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["datasetTimeInterval"].freeze
          }.freeze,
          text: {
            schema_name: "text",
            schema_url: "https://schema.org/text",
            comment_lines: ["The textual content of this CreativeWork."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          thumbnail: {
            schema_name: "thumbnail",
            schema_url: "https://schema.org/thumbnail",
            comment_lines: ["Thumbnail image for an image or video."].freeze,
            ranges: ["ImageObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          thumbnail_url: {
            schema_name: "thumbnailUrl",
            schema_url: "https://schema.org/thumbnailUrl",
            comment_lines: ["A thumbnail image relevant to the Thing."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          time_required: {
            schema_name: "timeRequired",
            schema_url: "https://schema.org/timeRequired",
            comment_lines: ["Approximate or typical time it usually takes to work with or through the content of this work for the typical or target audience."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          translation_of_work: {
            schema_name: "translationOfWork",
            schema_url: "https://schema.org/translationOfWork",
            comment_lines: ["The work that this work has been translated from. E.g. 物种起源 is a translationOf “On the Origin of Species”."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "workTranslation",
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
          usage_info: {
            schema_name: "usageInfo",
            schema_url: "https://schema.org/usageInfo",
            comment_lines: ["The schema.org [[usageInfo]] property indicates further information about a [[CreativeWork]]. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information, e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.", "", "This property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          version: {
            schema_name: "version",
            schema_url: "https://schema.org/version",
            comment_lines: ["The version of the CreativeWork embodied by a specified resource."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          video: {
            schema_name: "video",
            schema_url: "https://schema.org/video",
            comment_lines: ["An embedded video object."].freeze,
            ranges: ["Clip", "VideoObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          word_count: {
            schema_name: "wordCount",
            schema_url: "https://schema.org/wordCount",
            comment_lines: ["The number of words in the text of the CreativeWork such as an Article, Book, etc."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_example: {
            schema_name: "workExample",
            schema_url: "https://schema.org/workExample",
            comment_lines: ["Example/instance/realization/derivation of the concept of this creative work. E.g. the paperback edition, first edition, or e-book."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "exampleOfWork",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_translation: {
            schema_name: "workTranslation",
            schema_url: "https://schema.org/workTranslation",
            comment_lines: ["A work that is a translation of the content of this work. E.g. 西遊記 has an English workTranslation “Journey to the West”, a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "translationOfWork",
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

      # An abstract is a short description that summarizes a [[CreativeWork]].
      def abstract
        read_property(:abstract)
      end

      # An abstract is a short description that summarizes a [[CreativeWork]].
      def abstract=(value)
        write_property(:abstract, value)
      end

      # The human sensory perceptual system or cognitive faculty through which a person may process or perceive the intellectual content of a resource, not including any adaptations of the content (e.g., text alternatives for images). Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary).
      def access_mode
        read_property(:access_mode)
      end

      # The human sensory perceptual system or cognitive faculty through which a person may process or perceive the intellectual content of a resource, not including any adaptations of the content (e.g., text alternatives for images). Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary).
      def access_mode=(value)
        write_property(:access_mode, value)
      end

      # A list of single or combined access modes that are sufficient to understand all the intellectual content of a resource, including any adaptations. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary).
      def access_mode_sufficient
        read_property(:access_mode_sufficient)
      end

      # A list of single or combined access modes that are sufficient to understand all the intellectual content of a resource, including any adaptations. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary).
      def access_mode_sufficient=(value)
        write_property(:access_mode_sufficient, value)
      end

      # Indicates that the resource is compatible with the referenced accessibility API. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary).
      def accessibility_api
        read_property(:accessibility_api)
      end

      # Indicates that the resource is compatible with the referenced accessibility API. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary).
      def accessibility_api=(value)
        write_property(:accessibility_api, value)
      end

      # Identifies input methods that are sufficient to fully control the described resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary).
      def accessibility_control
        read_property(:accessibility_control)
      end

      # Identifies input methods that are sufficient to fully control the described resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary).
      def accessibility_control=(value)
        write_property(:accessibility_control, value)
      end

      # Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary).
      def accessibility_feature
        read_property(:accessibility_feature)
      end

      # Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary).
      def accessibility_feature=(value)
        write_property(:accessibility_feature, value)
      end

      # A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary).
      def accessibility_hazard
        read_property(:accessibility_hazard)
      end

      # A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary).
      def accessibility_hazard=(value)
        write_property(:accessibility_hazard, value)
      end

      # A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed".
      def accessibility_summary
        read_property(:accessibility_summary)
      end

      # A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed".
      def accessibility_summary=(value)
        write_property(:accessibility_summary, value)
      end

      # Specifies the Person that is legally accountable for the CreativeWork.
      def accountable_person
        read_property(:accountable_person)
      end

      # Specifies the Person that is legally accountable for the CreativeWork.
      def accountable_person=(value)
        write_property(:accountable_person, value)
      end

      # Indicates a page documenting how licenses can be purchased or otherwise acquired, for the current item.
      def acquire_license_page
        read_property(:acquire_license_page)
      end

      # Indicates a page documenting how licenses can be purchased or otherwise acquired, for the current item.
      def acquire_license_page=(value)
        write_property(:acquire_license_page, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # A secondary title of the CreativeWork.
      def alternative_headline
        read_property(:alternative_headline)
      end

      # A secondary title of the CreativeWork.
      def alternative_headline=(value)
        write_property(:alternative_headline, value)
      end

      # Indicates a page or other link involved in archival of a [[CreativeWork]]. In the case of [[MediaReview]], the items in a [[MediaReviewItem]] may often become inaccessible, but be archived by archival, journalistic, activist, or law enforcement organizations. In such cases, the referenced page may not directly publish the content.
      def archived_at
        read_property(:archived_at)
      end

      # Indicates a page or other link involved in archival of a [[CreativeWork]]. In the case of [[MediaReview]], the items in a [[MediaReviewItem]] may often become inaccessible, but be archived by archival, journalistic, activist, or law enforcement organizations. In such cases, the referenced page may not directly publish the content.
      def archived_at=(value)
        write_property(:archived_at, value)
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses
        read_property(:assesses)
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses=(value)
        write_property(:assesses, value)
      end

      # A media object that encodes this CreativeWork. This property is a synonym for encoding.
      def associated_media
        read_property(:associated_media)
      end

      # A media object that encodes this CreativeWork. This property is a synonym for encoding.
      def associated_media=(value)
        write_property(:associated_media, value)
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

      # An embedded audio object.
      def audio
        read_property(:audio)
      end

      # An embedded audio object.
      def audio=(value)
        write_property(:audio, value)
      end

      # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
      def author
        read_property(:author)
      end

      # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
      def author=(value)
        write_property(:author, value)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award
        read_property(:award)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award=(value)
        write_property(:award, value)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards
        read_property(:awards)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards=(value)
        write_property(:awards, value)
      end

      # Fictional person connected with a creative work.
      def character
        read_property(:character)
      end

      # Fictional person connected with a creative work.
      def character=(value)
        write_property(:character, value)
      end

      # A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.
      def citation
        read_property(:citation)
      end

      # A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.
      def citation=(value)
        write_property(:citation, value)
      end

      # Comments, typically from users.
      def comment
        read_property(:comment)
      end

      # Comments, typically from users.
      def comment=(value)
        write_property(:comment, value)
      end

      # The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.
      def comment_count
        read_property(:comment_count)
      end

      # The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.
      def comment_count=(value)
        write_property(:comment_count, value)
      end

      # Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an [[ArchiveComponent]] held by an [[ArchiveOrganization]]. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.\n\nFor example "Available by appointment from the Reading Room" or "Accessible only from logged-in accounts ".
      def conditions_of_access
        read_property(:conditions_of_access)
      end

      # Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an [[ArchiveComponent]] held by an [[ArchiveOrganization]]. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.\n\nFor example "Available by appointment from the Reading Room" or "Accessible only from logged-in accounts ".
      def conditions_of_access=(value)
        write_property(:conditions_of_access, value)
      end

      # The location depicted or described in the content. For example, the location in a photograph or painting.
      def content_location
        read_property(:content_location)
      end

      # The location depicted or described in the content. For example, the location in a photograph or painting.
      def content_location=(value)
        write_property(:content_location, value)
      end

      # Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'.
      def content_rating
        read_property(:content_rating)
      end

      # Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'.
      def content_rating=(value)
        write_property(:content_rating, value)
      end

      # The specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event.
      def content_reference_time
        read_property(:content_reference_time)
      end

      # The specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event.
      def content_reference_time=(value)
        write_property(:content_reference_time, value)
      end

      # A secondary contributor to the CreativeWork or Event.
      def contributor
        read_property(:contributor)
      end

      # A secondary contributor to the CreativeWork or Event.
      def contributor=(value)
        write_property(:contributor, value)
      end

      # The party holding the legal copyright to the CreativeWork.
      def copyright_holder
        read_property(:copyright_holder)
      end

      # The party holding the legal copyright to the CreativeWork.
      def copyright_holder=(value)
        write_property(:copyright_holder, value)
      end

      # Text of a notice appropriate for describing the copyright aspects of this Creative Work, ideally indicating the owner of the copyright for the Work.
      def copyright_notice
        read_property(:copyright_notice)
      end

      # Text of a notice appropriate for describing the copyright aspects of this Creative Work, ideally indicating the owner of the copyright for the Work.
      def copyright_notice=(value)
        write_property(:copyright_notice, value)
      end

      # The year during which the claimed copyright for the CreativeWork was first asserted.
      def copyright_year
        read_property(:copyright_year)
      end

      # The year during which the claimed copyright for the CreativeWork was first asserted.
      def copyright_year=(value)
        write_property(:copyright_year, value)
      end

      # Indicates a correction to a [[CreativeWork]], either via a [[CorrectionComment]], textually or in another document.
      def correction
        read_property(:correction)
      end

      # Indicates a correction to a [[CreativeWork]], either via a [[CorrectionComment]], textually or in another document.
      def correction=(value)
        write_property(:correction, value)
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin
        read_property(:country_of_origin)
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      # The status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle.
      def creative_work_status
        read_property(:creative_work_status)
      end

      # The status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle.
      def creative_work_status=(value)
        write_property(:creative_work_status, value)
      end

      # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
      def creator
        read_property(:creator)
      end

      # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
      def creator=(value)
        write_property(:creator, value)
      end

      # Text that can be used to credit person(s) and/or organization(s) associated with a published Creative Work.
      def credit_text
        read_property(:credit_text)
      end

      # Text that can be used to credit person(s) and/or organization(s) associated with a published Creative Work.
      def credit_text=(value)
        write_property(:credit_text, value)
      end

      # The date on which the CreativeWork was created or the item was added to a DataFeed.
      def date_created
        read_property(:date_created)
      end

      # The date on which the CreativeWork was created or the item was added to a DataFeed.
      def date_created=(value)
        write_property(:date_created, value)
      end

      # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
      def date_modified
        read_property(:date_modified)
      end

      # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
      def date_modified=(value)
        write_property(:date_modified, value)
      end

      # Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued.
      def date_published
        read_property(:date_published)
      end

      # Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued.
      def date_published=(value)
        write_property(:date_published, value)
      end

      # Indicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some [[CreativeWork]].
      def digital_source_type
        read_property(:digital_source_type)
      end

      # Indicates an IPTCDigitalSourceEnumeration code indicating the nature of the digital source(s) for some [[CreativeWork]].
      def digital_source_type=(value)
        write_property(:digital_source_type, value)
      end

      # A link to the page containing the comments of the CreativeWork.
      def discussion_url
        read_property(:discussion_url)
      end

      # A link to the page containing the comments of the CreativeWork.
      def discussion_url=(value)
        write_property(:discussion_url, value)
      end

      # The location at which an item can be viewed or experienced in-person.
      def display_location
        read_property(:display_location)
      end

      # The location at which an item can be viewed or experienced in-person.
      def display_location=(value)
        write_property(:display_location, value)
      end

      # An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing a specific edit / edition for a work of film or television.
      #
      # For example, the motion picture known as "Ghostbusters" whose [[titleEIDR]] is "10.5240/7EC7-228A-510A-053E-CBB8-J" has several edits, e.g. "10.5240/1F2A-E1C5-680A-14C6-E76B-I" and "10.5240/8A35-3BEE-6497-5D12-9E4F-3".
      #
      # Since schema.org types like [[Movie]] and [[TVEpisode]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.
      def edit_eidr
        read_property(:edit_eidr)
      end

      # An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing a specific edit / edition for a work of film or television.
      #
      # For example, the motion picture known as "Ghostbusters" whose [[titleEIDR]] is "10.5240/7EC7-228A-510A-053E-CBB8-J" has several edits, e.g. "10.5240/1F2A-E1C5-680A-14C6-E76B-I" and "10.5240/8A35-3BEE-6497-5D12-9E4F-3".
      #
      # Since schema.org types like [[Movie]] and [[TVEpisode]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.
      def edit_eidr=(value)
        write_property(:edit_eidr, value)
      end

      # Specifies the Person who edited the CreativeWork.
      def editor
        read_property(:editor)
      end

      # Specifies the Person who edited the CreativeWork.
      def editor=(value)
        write_property(:editor, value)
      end

      # An alignment to an established educational framework.
      #
      # This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
      def educational_alignment
        read_property(:educational_alignment)
      end

      # An alignment to an established educational framework.
      #
      # This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
      def educational_alignment=(value)
        write_property(:educational_alignment, value)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level
        read_property(:educational_level)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level=(value)
        write_property(:educational_level, value)
      end

      # The purpose of a work in the context of education; for example, 'assignment', 'group work'.
      def educational_use
        read_property(:educational_use)
      end

      # The purpose of a work in the context of education; for example, 'assignment', 'group work'.
      def educational_use=(value)
        write_property(:educational_use, value)
      end

      # A media object that encodes this CreativeWork. This property is a synonym for associatedMedia.
      # Supersedes `encodings`.
      # Inverse-property: `encodesCreativeWork`.
      def encoding
        read_property(:encoding)
      end

      # A media object that encodes this CreativeWork. This property is a synonym for associatedMedia.
      # Supersedes `encodings`.
      # Inverse-property: `encodesCreativeWork`.
      def encoding=(value)
        write_property(:encoding, value)
      end

      # Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.
      #
      # In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.
      #
      # Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.
      # Supersedes `fileFormat`.
      def encoding_format
        read_property(:encoding_format)
      end

      # Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.
      #
      # In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.
      #
      # Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.
      # Supersedes `fileFormat`.
      def encoding_format=(value)
        write_property(:encoding_format, value)
      end

      # A media object that encodes this CreativeWork.
      # Superseded by `encoding`.
      def encodings
        read_property(:encodings)
      end

      # A media object that encodes this CreativeWork.
      # Superseded by `encoding`.
      def encodings=(value)
        write_property(:encodings, value)
      end

      # A creative work that this work is an example/instance/realization/derivation of.
      # Inverse-property: `workExample`.
      def example_of_work
        read_property(:example_of_work)
      end

      # A creative work that this work is an example/instance/realization/derivation of.
      # Inverse-property: `workExample`.
      def example_of_work=(value)
        write_property(:example_of_work, value)
      end

      # Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired.
      def expires
        read_property(:expires)
      end

      # Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired.
      def expires=(value)
        write_property(:expires, value)
      end

      # Media type, typically MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of the content, e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, 'encoding' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry.
      # Superseded by `encodingFormat`.
      def file_format
        read_property(:file_format)
      end

      # Media type, typically MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of the content, e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, 'encoding' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry.
      # Superseded by `encodingFormat`.
      def file_format=(value)
        write_property(:file_format, value)
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

      # Genre of the creative work, broadcast channel or group.
      def genre
        read_property(:genre)
      end

      # Genre of the creative work, broadcast channel or group.
      def genre=(value)
        write_property(:genre, value)
      end

      # Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense).
      # Inverse-property: `isPartOf`.
      def has_part
        read_property(:has_part)
      end

      # Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense).
      # Inverse-property: `isPartOf`.
      def has_part=(value)
        write_property(:has_part, value)
      end

      # Headline of the article.
      def headline
        read_property(:headline)
      end

      # Headline of the article.
      def headline=(value)
        write_property(:headline, value)
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

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.
      # Supersedes `interactionCount`.
      def interaction_statistic
        read_property(:interaction_statistic)
      end

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.
      # Supersedes `interactionCount`.
      def interaction_statistic=(value)
        write_property(:interaction_statistic, value)
      end

      # The predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'.
      def interactivity_type
        read_property(:interactivity_type)
      end

      # The predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'.
      def interactivity_type=(value)
        write_property(:interactivity_type, value)
      end

      # Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]].
      def interpreted_as_claim
        read_property(:interpreted_as_claim)
      end

      # Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]].
      def interpreted_as_claim=(value)
        write_property(:interpreted_as_claim, value)
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

      # A resource from which this work is derived or from which it is a modification or adaptation.
      # Supersedes `isBasedOnUrl`.
      def is_based_on
        read_property(:is_based_on)
      end

      # A resource from which this work is derived or from which it is a modification or adaptation.
      # Supersedes `isBasedOnUrl`.
      def is_based_on=(value)
        write_property(:is_based_on, value)
      end

      # A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html.
      # Superseded by `isBasedOn`.
      def is_based_on_url
        read_property(:is_based_on_url)
      end

      # A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html.
      # Superseded by `isBasedOn`.
      def is_based_on_url=(value)
        write_property(:is_based_on_url, value)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly
        read_property(:is_family_friendly)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly=(value)
        write_property(:is_family_friendly, value)
      end

      # Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of.
      # Inverse-property: `hasPart`.
      def is_part_of
        read_property(:is_part_of)
      end

      # Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of.
      # Inverse-property: `hasPart`.
      def is_part_of=(value)
        write_property(:is_part_of, value)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords
        read_property(:keywords)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords=(value)
        write_property(:keywords, value)
      end

      # The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
      def learning_resource_type
        read_property(:learning_resource_type)
      end

      # The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
      def learning_resource_type=(value)
        write_property(:learning_resource_type, value)
      end

      # A license document that applies to this content, typically indicated by URL.
      def license
        read_property(:license)
      end

      # A license document that applies to this content, typically indicated by URL.
      def license=(value)
        write_property(:license, value)
      end

      # The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork.
      def location_created
        read_property(:location_created)
      end

      # The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork.
      def location_created=(value)
        write_property(:location_created, value)
      end

      # Indicates the primary entity described in some page or other CreativeWork.
      # Inverse-property: `mainEntityOfPage`.
      def main_entity
        read_property(:main_entity)
      end

      # Indicates the primary entity described in some page or other CreativeWork.
      # Inverse-property: `mainEntityOfPage`.
      def main_entity=(value)
        write_property(:main_entity, value)
      end

      # A maintainer of a [[Dataset]], software package ([[SoftwareApplication]]), or other [[Project]]. A maintainer is a [[Person]] or [[Organization]] that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on "upstream" sources. When [[maintainer]] is applied to a specific version of something e.g. a particular version or packaging of a [[Dataset]], it is always  possible that the upstream source has a different maintainer. The [[isBasedOn]] property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.
      def maintainer
        read_property(:maintainer)
      end

      # A maintainer of a [[Dataset]], software package ([[SoftwareApplication]]), or other [[Project]]. A maintainer is a [[Person]] or [[Organization]] that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on "upstream" sources. When [[maintainer]] is applied to a specific version of something e.g. a particular version or packaging of a [[Dataset]], it is always  possible that the upstream source has a different maintainer. The [[isBasedOn]] property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.
      def maintainer=(value)
        write_property(:maintainer, value)
      end

      # A material that something is made from, e.g. leather, wool, cotton, paper.
      def material
        read_property(:material)
      end

      # A material that something is made from, e.g. leather, wool, cotton, paper.
      def material=(value)
        write_property(:material, value)
      end

      # The quantity of the materials being described or an expression of the physical space they occupy.
      def material_extent
        read_property(:material_extent)
      end

      # The quantity of the materials being described or an expression of the physical space they occupy.
      def material_extent=(value)
        write_property(:material_extent, value)
      end

      # Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.
      def mentions
        read_property(:mentions)
      end

      # Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.
      def mentions=(value)
        write_property(:mentions, value)
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

      # A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported.
      def pattern
        read_property(:pattern)
      end

      # A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported.
      def pattern=(value)
        write_property(:pattern, value)
      end

      # The position of an item in a series or sequence of items.
      def position
        read_property(:position)
      end

      # The position of an item in a series or sequence of items.
      def position=(value)
        write_property(:position, value)
      end

      # The person or organization who produced the work (e.g. music album, movie, TV/radio series etc.).
      def producer
        read_property(:producer)
      end

      # The person or organization who produced the work (e.g. music album, movie, TV/radio series etc.).
      def producer=(value)
        write_property(:producer, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # A publication event associated with the item.
      def publication
        read_property(:publication)
      end

      # A publication event associated with the item.
      def publication=(value)
        write_property(:publication, value)
      end

      # The publisher of the article in question.
      def publisher
        read_property(:publisher)
      end

      # The publisher of the article in question.
      def publisher=(value)
        write_property(:publisher, value)
      end

      # The publishing division which published the comic.
      def publisher_imprint
        read_property(:publisher_imprint)
      end

      # The publishing division which published the comic.
      def publisher_imprint=(value)
        write_property(:publisher_imprint, value)
      end

      # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].
      #
      # While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
      def publishing_principles
        read_property(:publishing_principles)
      end

      # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].
      #
      # While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
      def publishing_principles=(value)
        write_property(:publishing_principles, value)
      end

      # The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event.
      # Inverse-property: `recordedIn`.
      def recorded_at
        read_property(:recorded_at)
      end

      # The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event.
      # Inverse-property: `recordedIn`.
      def recorded_at=(value)
        write_property(:recorded_at, value)
      end

      # The place and time the release was issued, expressed as a PublicationEvent.
      def released_event
        read_property(:released_event)
      end

      # The place and time the release was issued, expressed as a PublicationEvent.
      def released_event=(value)
        write_property(:released_event, value)
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

      # Review of the item.
      # Superseded by `review`.
      def reviews
        read_property(:reviews)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews=(value)
        write_property(:reviews, value)
      end

      # Indicates (by URL or string) a particular version of a schema used in some CreativeWork. This property was created primarily to
      #     indicate the use of a specific schema.org release, e.g. ```10.0``` as a simple string, or more explicitly via URL, ```https://schema.org/docs/releases.html#v10.0```. There may be situations in which other schemas might usefully be referenced this way, e.g. ```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this has not been carefully explored in the community.
      def schema_version
        read_property(:schema_version)
      end

      # Indicates (by URL or string) a particular version of a schema used in some CreativeWork. This property was created primarily to
      #     indicate the use of a specific schema.org release, e.g. ```10.0``` as a simple string, or more explicitly via URL, ```https://schema.org/docs/releases.html#v10.0```. There may be situations in which other schemas might usefully be referenced this way, e.g. ```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this has not been carefully explored in the community.
      def schema_version=(value)
        write_property(:schema_version, value)
      end

      # Indicates the date on which the current structured data was generated / published. Typically used alongside [[sdPublisher]].
      def sd_date_published
        read_property(:sd_date_published)
      end

      # Indicates the date on which the current structured data was generated / published. Typically used alongside [[sdPublisher]].
      def sd_date_published=(value)
        write_property(:sd_date_published, value)
      end

      # A license document that applies to this structured data, typically indicated by URL.
      def sd_license
        read_property(:sd_license)
      end

      # A license document that applies to this structured data, typically indicated by URL.
      def sd_license=(value)
        write_property(:sd_license, value)
      end

      # Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The
      # [[sdPublisher]] property helps make such practices more explicit.
      def sd_publisher
        read_property(:sd_publisher)
      end

      # Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The
      # [[sdPublisher]] property helps make such practices more explicit.
      def sd_publisher=(value)
        write_property(:sd_publisher, value)
      end

      # A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable.
      def size
        read_property(:size)
      end

      # A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable.
      def size=(value)
        write_property(:size, value)
      end

      # The Organization on whose behalf the creator was working.
      def source_organization
        read_property(:source_organization)
      end

      # The Organization on whose behalf the creator was working.
      def source_organization=(value)
        write_property(:source_organization, value)
      end

      # The "spatial" property can be used in cases when more specific properties
      # (e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate.
      def spatial
        read_property(:spatial)
      end

      # The "spatial" property can be used in cases when more specific properties
      # (e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate.
      def spatial=(value)
        write_property(:spatial, value)
      end

      # The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of
      #       contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates
      #       areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York.
      def spatial_coverage
        read_property(:spatial_coverage)
      end

      # The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of
      #       contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates
      #       areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York.
      def spatial_coverage=(value)
        write_property(:spatial_coverage, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches
        read_property(:teaches)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches=(value)
        write_property(:teaches, value)
      end

      # The "temporal" property can be used in cases where more specific properties
      # (e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate.
      def temporal
        read_property(:temporal)
      end

      # The "temporal" property can be used in cases where more specific properties
      # (e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate.
      def temporal=(value)
        write_property(:temporal, value)
      end

      # The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in [ISO 8601 time interval format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In
      #       the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written "2011/2012"). Other forms of content, e.g. ScholarlyArticle, Book, TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms - textually or via well-known URL.
      #       Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via "1939/1945".
      #
      # Open-ended date ranges can be written with ".." in place of the end date. For example, "2015-11/.." indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated.
      # Supersedes `datasetTimeInterval`.
      def temporal_coverage
        read_property(:temporal_coverage)
      end

      # The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in [ISO 8601 time interval format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In
      #       the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written "2011/2012"). Other forms of content, e.g. ScholarlyArticle, Book, TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms - textually or via well-known URL.
      #       Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via "1939/1945".
      #
      # Open-ended date ranges can be written with ".." in place of the end date. For example, "2015-11/.." indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated.
      # Supersedes `datasetTimeInterval`.
      def temporal_coverage=(value)
        write_property(:temporal_coverage, value)
      end

      # The textual content of this CreativeWork.
      def text
        read_property(:text)
      end

      # The textual content of this CreativeWork.
      def text=(value)
        write_property(:text, value)
      end

      # Thumbnail image for an image or video.
      def thumbnail
        read_property(:thumbnail)
      end

      # Thumbnail image for an image or video.
      def thumbnail=(value)
        write_property(:thumbnail, value)
      end

      # A thumbnail image relevant to the Thing.
      def thumbnail_url
        read_property(:thumbnail_url)
      end

      # A thumbnail image relevant to the Thing.
      def thumbnail_url=(value)
        write_property(:thumbnail_url, value)
      end

      # Approximate or typical time it usually takes to work with or through the content of this work for the typical or target audience.
      def time_required
        read_property(:time_required)
      end

      # Approximate or typical time it usually takes to work with or through the content of this work for the typical or target audience.
      def time_required=(value)
        write_property(:time_required, value)
      end

      # The work that this work has been translated from. E.g. 物种起源 is a translationOf “On the Origin of Species”.
      # Inverse-property: `workTranslation`.
      def translation_of_work
        read_property(:translation_of_work)
      end

      # The work that this work has been translated from. E.g. 物种起源 is a translationOf “On the Origin of Species”.
      # Inverse-property: `workTranslation`.
      def translation_of_work=(value)
        write_property(:translation_of_work, value)
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

      # The schema.org [[usageInfo]] property indicates further information about a [[CreativeWork]]. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information, e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.
      #
      # This property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses.
      def usage_info
        read_property(:usage_info)
      end

      # The schema.org [[usageInfo]] property indicates further information about a [[CreativeWork]]. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information, e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.
      #
      # This property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses.
      def usage_info=(value)
        write_property(:usage_info, value)
      end

      # The version of the CreativeWork embodied by a specified resource.
      def version
        read_property(:version)
      end

      # The version of the CreativeWork embodied by a specified resource.
      def version=(value)
        write_property(:version, value)
      end

      # An embedded video object.
      def video
        read_property(:video)
      end

      # An embedded video object.
      def video=(value)
        write_property(:video, value)
      end

      # The number of words in the text of the CreativeWork such as an Article, Book, etc.
      def word_count
        read_property(:word_count)
      end

      # The number of words in the text of the CreativeWork such as an Article, Book, etc.
      def word_count=(value)
        write_property(:word_count, value)
      end

      # Example/instance/realization/derivation of the concept of this creative work. E.g. the paperback edition, first edition, or e-book.
      # Inverse-property: `exampleOfWork`.
      def work_example
        read_property(:work_example)
      end

      # Example/instance/realization/derivation of the concept of this creative work. E.g. the paperback edition, first edition, or e-book.
      # Inverse-property: `exampleOfWork`.
      def work_example=(value)
        write_property(:work_example, value)
      end

      # A work that is a translation of the content of this work. E.g. 西遊記 has an English workTranslation “Journey to the West”, a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo.
      # Inverse-property: `translationOfWork`.
      def work_translation
        read_property(:work_translation)
      end

      # A work that is a translation of the content of this work. E.g. 西遊記 has an English workTranslation “Journey to the West”, a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo.
      # Inverse-property: `translationOfWork`.
      def work_translation=(value)
        write_property(:work_translation, value)
      end
    end
  end
end
