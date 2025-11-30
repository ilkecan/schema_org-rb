require "active_support/concern"

module SchemaOrg
  module Mixins
    module Dataset
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :catalog, optional: true # A data catalog which contains this dataset. Superseded by `included_in_data_catalog`.
        option :dataset_time_interval, optional: true # The range of temporal applicability of a dataset, e.g. for a 2011 census dataset, the year 2011 (in ISO 8601 time interval format). Superseded by `temporal_coverage`.
        option :distribution, optional: true # A downloadable form of this dataset, at a specific location, in a specific format. This property can be repeated if different variations are available. There is no expectation that different downloadable distributions must contain exactly equivalent information (see also [DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this point). Different distributions might include or exclude different subsets of the entire dataset, for example.
        option :included_data_catalog, optional: true # A data catalog which contains this dataset (this property was previously 'catalog', preferred name is now 'includedInDataCatalog'). Superseded by `included_in_data_catalog`.
        option :issn, optional: true # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
        option :included_in_data_catalog, optional: true # A data catalog which contains this dataset. Supersedes `included_data_catalog`. Inverse-property: `dataset`.
      end
    end
  end
end
