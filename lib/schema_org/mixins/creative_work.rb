require "active_support/concern"

module SchemaOrg
  module Mixins
    module CreativeWork
      extend ActiveSupport::Concern

      include Thing

      included do
        option :access_mode # The human sensory perceptual system or cognitive faculty through which a person may process or perceive information. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary).
        option :access_mode_sufficient # A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary).
        option :accessibility_api # Indicates that the resource is compatible with the referenced accessibility API. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary).
        option :accessibility_control # Identifies input methods that are sufficient to fully control the described resource. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary).
        option :accessibility_feature # Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary).
        option :accessibility_hazard # A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. Values should be drawn from the [approved vocabulary](https://www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary).
        option :accessibility_summary # A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed".
        option :accountable_person # Specifies the Person that is legally accountable for the CreativeWork.
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :alternative_headline # A secondary title of the CreativeWork.
        option :associated_media # A media object that encodes this CreativeWork. This property is a synonym for encoding.
        option :audio # An embedded audio object.
        option :author # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
        option :awards # Awards won by or for this item. Superseded by `award`.
        option :character # Fictional person connected with a creative work.
        option :citation # A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.
        option :comment # Comments, typically from users.
        option :comment_count # The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.
        option :content_rating # Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'.
        option :contributor # A secondary contributor to the CreativeWork or Event.
        option :copyright_holder # The party holding the legal copyright to the CreativeWork.
        option :copyright_year # The year during which the claimed copyright for the CreativeWork was first asserted.
        option :country_of_origin # The country of origin of something, including products as well as creative  works such as movie and TV content.  In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.  In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
        option :creator # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
        option :date_created # The date on which the CreativeWork was created or the item was added to a DataFeed.
        option :date_modified # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
        option :date_published # Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued.
        option :discussion_url # A link to the page containing the comments of the CreativeWork.
        option :editor # Specifies the Person who edited the CreativeWork.
        option :educational_alignment # An alignment to an established educational framework.  This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
        option :educational_use # The purpose of a work in the context of education; for example, 'assignment', 'group work'.
        option :encodings # A media object that encodes this CreativeWork. Superseded by `encoding`.
        option :expires # Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired.
        option :file_format # Media type, typically MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of the content, e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, 'encoding' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry. Superseded by `encoding_format`.
        option :funder # A person or organization that supports (sponsors) something through some kind of financial contribution.
        option :genre # Genre of the creative work, broadcast channel or group.
        option :headline # Headline of the article.
        option :interactivity_type # The predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'.
        option :is_based_on_url # A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html. Superseded by `is_based_on`.
        option :is_family_friendly # Indicates whether this content is family friendly.
        option :keywords # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
        option :learning_resource_type # The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
        option :license # A license document that applies to this content, typically indicated by URL.
        option :location_created # The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork.
        option :mentions # Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.
        option :producer # The person or organization who produced the work (e.g. music album, movie, TV/radio series etc.).
        option :publication # A publication event associated with the item.
        option :publisher # The publisher of the article in question.
        option :publishing_principles # The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual, e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].  While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
        option :released_event # The place and time the release was issued, expressed as a PublicationEvent.
        option :reviews # Review of the item. Superseded by `review`.
        option :schema_version # Indicates (by URL or string) a particular version of a schema used in some CreativeWork. This property was created primarily to     indicate the use of a specific schema.org release, e.g. ```10.0``` as a simple string, or more explicitly via URL, ```https://schema.org/docs/releases.html#v10.0```. There may be situations in which other schemas might usefully be referenced this way, e.g. ```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this has not been carefully explored in the community.
        option :source_organization # The Organization on whose behalf the creator was working.
        option :spatial # The "spatial" property can be used in cases when more specific properties (e.g. [[locationCreated]], [[spatialCoverage]], [[contentLocation]]) are not known to be appropriate.
        option :spatial_coverage # The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of       contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates       areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York.
        option :temporal # The "temporal" property can be used in cases where more specific properties (e.g. [[temporalCoverage]], [[dateCreated]], [[dateModified]], [[datePublished]]) are not known to be appropriate.
        option :text # The textual content of this CreativeWork.
        option :thumbnail # Thumbnail image for an image or video.
        option :thumbnail_url # A thumbnail image relevant to the Thing.
        option :time_required # Approximate or typical time it usually takes to work with or through the content of this work for the typical or target audience.
        option :translator # Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.
        option :typical_age_range # The typical expected age range, e.g. '7-9', '11-'.
        option :version # The version of the CreativeWork embodied by a specified resource.
        option :video # An embedded video object.
        option :word_count # The number of words in the text of the CreativeWork such as an Article, Book, etc.
        option :audience # An intended audience, i.e. a group for whom something was created. Supersedes `service_audience`.
        option :award # An award won by or for this item. Supersedes `awards`.
        option :content_location # The location depicted or described in the content. For example, the location in a photograph or painting.
        option :encoding_format # Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.  In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.  Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry. Supersedes `file_format`.
        option :example_of_work # A creative work that this work is an example/instance/realization/derivation of. Inverse-property: `work_example`.
        option :in_language # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]. Supersedes `language`.
        option :interaction_statistic # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used. Supersedes `interaction_count`.
        option :is_accessible_for_free # A flag to signal that the item, event, or place is accessible for free. Supersedes `free`.
        option :is_based_on # A resource from which this work is derived or from which it is a modification or adaptation. Supersedes `is_based_on_url`.
        option :main_entity # Indicates the primary entity described in some page or other CreativeWork. Inverse-property: `main_entity_of_page`.
        option :offers # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer. Inverse-property: `item_offered`.
        option :provider # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller. Supersedes `carrier`.
        option :recorded_at # The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event. Inverse-property: `recorded_in`.
        option :review # A review of the item. Supersedes `reviews`.
        option :sponsor # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
        option :temporal_coverage # The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in [ISO 8601 time interval format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In       the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written "2011/2012"). Other forms of content, e.g. ScholarlyArticle, Book, TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms - textually or via well-known URL.       Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via "1939/1945".  Open-ended date ranges can be written with ".." in place of the end date. For example, "2015-11/.." indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated. Supersedes `dataset_time_interval`.
        option :work_example # Example/instance/realization/derivation of the concept of this creative work. E.g. the paperback edition, first edition, or e-book. Inverse-property: `example_of_work`.
        option :about # The subject matter of the content. Inverse-property: `subject_of`.
        option :encoding # A media object that encodes this CreativeWork. This property is a synonym for associatedMedia. Supersedes `encodings`. Inverse-property: `encodes_creative_work`.
        option :material # A material that something is made from, e.g. leather, wool, cotton, paper.
        option :has_part # Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense). Inverse-property: `is_part_of`.
        option :is_part_of # Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of. Inverse-property: `has_part`.
        option :position # The position of an item in a series or sequence of items.
      end
    end
  end
end
