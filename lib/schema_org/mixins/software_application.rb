module SchemaOrg
  module Mixins
    module SoftwareApplication
      include CreativeWork

      def self.schema_property_definitions
        {
          :application_category => {
            schema_name: "applicationCategory",
            ranges: ["Text", "URL"],
          }.freeze,
          :application_sub_category => {
            schema_name: "applicationSubCategory",
            ranges: ["Text", "URL"],
          }.freeze,
          :application_suite => {
            schema_name: "applicationSuite",
            ranges: ["Text"],
          }.freeze,
          :available_on_device => {
            schema_name: "availableOnDevice",
            ranges: ["Text"],
          }.freeze,
          :countries_not_supported => {
            schema_name: "countriesNotSupported",
            ranges: ["Text"],
          }.freeze,
          :countries_supported => {
            schema_name: "countriesSupported",
            ranges: ["Text"],
          }.freeze,
          :device => {
            schema_name: "device",
            ranges: ["Text"],
          }.freeze,
          :download_url => {
            schema_name: "downloadUrl",
            ranges: ["URL"],
          }.freeze,
          :feature_list => {
            schema_name: "featureList",
            ranges: ["Text", "URL"],
          }.freeze,
          :file_size => {
            schema_name: "fileSize",
            ranges: ["Text"],
          }.freeze,
          :install_url => {
            schema_name: "installUrl",
            ranges: ["URL"],
          }.freeze,
          :memory_requirements => {
            schema_name: "memoryRequirements",
            ranges: ["Text", "URL"],
          }.freeze,
          :operating_system => {
            schema_name: "operatingSystem",
            ranges: ["OperatingSystem", "Text"],
          }.freeze,
          :permissions => {
            schema_name: "permissions",
            ranges: ["Text"],
          }.freeze,
          :processor_requirements => {
            schema_name: "processorRequirements",
            ranges: ["Text"],
          }.freeze,
          :release_notes => {
            schema_name: "releaseNotes",
            ranges: ["Text", "URL"],
          }.freeze,
          :requirements => {
            schema_name: "requirements",
            ranges: ["Text", "URL"],
          }.freeze,
          :runtime_platform => {
            schema_name: "runtimePlatform",
            ranges: ["RuntimePlatform", "Text"],
          }.freeze,
          :screenshot => {
            schema_name: "screenshot",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :software_add_on => {
            schema_name: "softwareAddOn",
            ranges: ["SoftwareApplication"],
          }.freeze,
          :software_help => {
            schema_name: "softwareHelp",
            ranges: ["CreativeWork"],
          }.freeze,
          :software_requirements => {
            schema_name: "softwareRequirements",
            ranges: ["SoftwareApplication", "Text", "URL"],
          }.freeze,
          :software_version => {
            schema_name: "softwareVersion",
            ranges: ["Text"],
          }.freeze,
          :storage_requirements => {
            schema_name: "storageRequirements",
            ranges: ["Text", "URL"],
          }.freeze,
          :supporting_data => {
            schema_name: "supportingData",
            ranges: ["DataFeed"],
          }.freeze,
        }.freeze
      end

      def application_category
        read_property(:application_category)
      end

      def application_category=(value)
        write_property(:application_category, value)
      end

      def application_sub_category
        read_property(:application_sub_category)
      end

      def application_sub_category=(value)
        write_property(:application_sub_category, value)
      end

      def application_suite
        read_property(:application_suite)
      end

      def application_suite=(value)
        write_property(:application_suite, value)
      end

      def available_on_device
        read_property(:available_on_device)
      end

      def available_on_device=(value)
        write_property(:available_on_device, value)
      end

      def countries_not_supported
        read_property(:countries_not_supported)
      end

      def countries_not_supported=(value)
        write_property(:countries_not_supported, value)
      end

      def countries_supported
        read_property(:countries_supported)
      end

      def countries_supported=(value)
        write_property(:countries_supported, value)
      end

      def device
        read_property(:device)
      end

      def device=(value)
        write_property(:device, value)
      end

      def download_url
        read_property(:download_url)
      end

      def download_url=(value)
        write_property(:download_url, value)
      end

      def feature_list
        read_property(:feature_list)
      end

      def feature_list=(value)
        write_property(:feature_list, value)
      end

      def file_size
        read_property(:file_size)
      end

      def file_size=(value)
        write_property(:file_size, value)
      end

      def install_url
        read_property(:install_url)
      end

      def install_url=(value)
        write_property(:install_url, value)
      end

      def memory_requirements
        read_property(:memory_requirements)
      end

      def memory_requirements=(value)
        write_property(:memory_requirements, value)
      end

      def operating_system
        read_property(:operating_system)
      end

      def operating_system=(value)
        write_property(:operating_system, value)
      end

      def permissions
        read_property(:permissions)
      end

      def permissions=(value)
        write_property(:permissions, value)
      end

      def processor_requirements
        read_property(:processor_requirements)
      end

      def processor_requirements=(value)
        write_property(:processor_requirements, value)
      end

      def release_notes
        read_property(:release_notes)
      end

      def release_notes=(value)
        write_property(:release_notes, value)
      end

      def requirements
        read_property(:requirements)
      end

      def requirements=(value)
        write_property(:requirements, value)
      end

      def runtime_platform
        read_property(:runtime_platform)
      end

      def runtime_platform=(value)
        write_property(:runtime_platform, value)
      end

      def screenshot
        read_property(:screenshot)
      end

      def screenshot=(value)
        write_property(:screenshot, value)
      end

      def software_add_on
        read_property(:software_add_on)
      end

      def software_add_on=(value)
        write_property(:software_add_on, value)
      end

      def software_help
        read_property(:software_help)
      end

      def software_help=(value)
        write_property(:software_help, value)
      end

      def software_requirements
        read_property(:software_requirements)
      end

      def software_requirements=(value)
        write_property(:software_requirements, value)
      end

      def software_version
        read_property(:software_version)
      end

      def software_version=(value)
        write_property(:software_version, value)
      end

      def storage_requirements
        read_property(:storage_requirements)
      end

      def storage_requirements=(value)
        write_property(:storage_requirements, value)
      end

      def supporting_data
        read_property(:supporting_data)
      end

      def supporting_data=(value)
        write_property(:supporting_data, value)
      end

    end
  end
end
