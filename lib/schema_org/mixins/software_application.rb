# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SoftwareApplication
      include CreativeWork

      def self.schema_property_definitions
        {
          application_category: {
            schema_name: "applicationCategory",
            schema_url: "https://schema.org/applicationCategory",
            comment_lines: ["Type of software application, e.g. 'Game, Multimedia'."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          application_sub_category: {
            schema_name: "applicationSubCategory",
            schema_url: "https://schema.org/applicationSubCategory",
            comment_lines: ["Subcategory of the application, e.g. 'Arcade Game'."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          application_suite: {
            schema_name: "applicationSuite",
            schema_url: "https://schema.org/applicationSuite",
            comment_lines: ["The name of the application suite to which the application belongs (e.g. Excel belongs to Office)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_on_device: {
            schema_name: "availableOnDevice",
            schema_url: "https://schema.org/availableOnDevice",
            comment_lines: ["Device required to run the application. Used in cases where a specific make/model is required to run the application."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["device"].freeze
          }.freeze,
          countries_not_supported: {
            schema_name: "countriesNotSupported",
            schema_url: "https://schema.org/countriesNotSupported",
            comment_lines: ["Countries for which the application is not supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          countries_supported: {
            schema_name: "countriesSupported",
            schema_url: "https://schema.org/countriesSupported",
            comment_lines: ["Countries for which the application is supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          device: {
            schema_name: "device",
            schema_url: "https://schema.org/device",
            comment_lines: ["Device required to run the application. Used in cases where a specific make/model is required to run the application."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "availableOnDevice",
            supersedes: nil
          }.freeze,
          download_url: {
            schema_name: "downloadUrl",
            schema_url: "https://schema.org/downloadUrl",
            comment_lines: ["If the file can be downloaded, URL to download the binary."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          feature_list: {
            schema_name: "featureList",
            schema_url: "https://schema.org/featureList",
            comment_lines: ["Features or modules provided by this application (and possibly required by other applications)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          file_size: {
            schema_name: "fileSize",
            schema_url: "https://schema.org/fileSize",
            comment_lines: ["Size of the application / package (e.g. 18MB). In the absence of a unit (MB, KB etc.), KB will be assumed."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          install_url: {
            schema_name: "installUrl",
            schema_url: "https://schema.org/installUrl",
            comment_lines: ["URL at which the app may be installed, if different from the URL of the item."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          memory_requirements: {
            schema_name: "memoryRequirements",
            schema_url: "https://schema.org/memoryRequirements",
            comment_lines: ["Minimum memory requirements."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          operating_system: {
            schema_name: "operatingSystem",
            schema_url: "https://schema.org/operatingSystem",
            comment_lines: ["Operating systems supported (Windows 7, OS X 10.6, Android 1.6)."].freeze,
            ranges: ["OperatingSystem", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          permissions: {
            schema_name: "permissions",
            schema_url: "https://schema.org/permissions",
            comment_lines: ["Permission(s) required to run the app (for example, a mobile app may require full internet access or may run only on wifi)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          processor_requirements: {
            schema_name: "processorRequirements",
            schema_url: "https://schema.org/processorRequirements",
            comment_lines: ["Processor architecture required to run the application (e.g. IA64)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          release_notes: {
            schema_name: "releaseNotes",
            schema_url: "https://schema.org/releaseNotes",
            comment_lines: ["Description of what changed in this version."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          requirements: {
            schema_name: "requirements",
            schema_url: "https://schema.org/requirements",
            comment_lines: ["Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "softwareRequirements",
            supersedes: nil
          }.freeze,
          runtime_platform: {
            schema_name: "runtimePlatform",
            schema_url: "https://schema.org/runtimePlatform",
            comment_lines: ["Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0)."].freeze,
            ranges: ["RuntimePlatform", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["runtime"].freeze
          }.freeze,
          screenshot: {
            schema_name: "screenshot",
            schema_url: "https://schema.org/screenshot",
            comment_lines: ["A link to a screenshot image of the app."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          software_add_on: {
            schema_name: "softwareAddOn",
            schema_url: "https://schema.org/softwareAddOn",
            comment_lines: ["Additional content for a software application."].freeze,
            ranges: ["SoftwareApplication"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          software_help: {
            schema_name: "softwareHelp",
            schema_url: "https://schema.org/softwareHelp",
            comment_lines: ["Software application help."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          software_requirements: {
            schema_name: "softwareRequirements",
            schema_url: "https://schema.org/softwareRequirements",
            comment_lines: ["Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime)."].freeze,
            ranges: ["SoftwareApplication", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["requirements"].freeze
          }.freeze,
          software_version: {
            schema_name: "softwareVersion",
            schema_url: "https://schema.org/softwareVersion",
            comment_lines: ["Version of the software instance."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          storage_requirements: {
            schema_name: "storageRequirements",
            schema_url: "https://schema.org/storageRequirements",
            comment_lines: ["Storage requirements (free space required)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          supporting_data: {
            schema_name: "supportingData",
            schema_url: "https://schema.org/supportingData",
            comment_lines: ["Supporting data for a SoftwareApplication."].freeze,
            ranges: ["DataFeed"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Type of software application, e.g. 'Game, Multimedia'.
      def application_category
        read_property(:application_category)
      end

      # Type of software application, e.g. 'Game, Multimedia'.
      def application_category=(value)
        write_property(:application_category, value)
      end

      # Subcategory of the application, e.g. 'Arcade Game'.
      def application_sub_category
        read_property(:application_sub_category)
      end

      # Subcategory of the application, e.g. 'Arcade Game'.
      def application_sub_category=(value)
        write_property(:application_sub_category, value)
      end

      # The name of the application suite to which the application belongs (e.g. Excel belongs to Office).
      def application_suite
        read_property(:application_suite)
      end

      # The name of the application suite to which the application belongs (e.g. Excel belongs to Office).
      def application_suite=(value)
        write_property(:application_suite, value)
      end

      # Device required to run the application. Used in cases where a specific make/model is required to run the application.
      # Supersedes `device`.
      def available_on_device
        read_property(:available_on_device)
      end

      # Device required to run the application. Used in cases where a specific make/model is required to run the application.
      # Supersedes `device`.
      def available_on_device=(value)
        write_property(:available_on_device, value)
      end

      # Countries for which the application is not supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
      def countries_not_supported
        read_property(:countries_not_supported)
      end

      # Countries for which the application is not supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
      def countries_not_supported=(value)
        write_property(:countries_not_supported, value)
      end

      # Countries for which the application is supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
      def countries_supported
        read_property(:countries_supported)
      end

      # Countries for which the application is supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
      def countries_supported=(value)
        write_property(:countries_supported, value)
      end

      # Device required to run the application. Used in cases where a specific make/model is required to run the application.
      # Superseded by `availableOnDevice`.
      def device
        read_property(:device)
      end

      # Device required to run the application. Used in cases where a specific make/model is required to run the application.
      # Superseded by `availableOnDevice`.
      def device=(value)
        write_property(:device, value)
      end

      # If the file can be downloaded, URL to download the binary.
      def download_url
        read_property(:download_url)
      end

      # If the file can be downloaded, URL to download the binary.
      def download_url=(value)
        write_property(:download_url, value)
      end

      # Features or modules provided by this application (and possibly required by other applications).
      def feature_list
        read_property(:feature_list)
      end

      # Features or modules provided by this application (and possibly required by other applications).
      def feature_list=(value)
        write_property(:feature_list, value)
      end

      # Size of the application / package (e.g. 18MB). In the absence of a unit (MB, KB etc.), KB will be assumed.
      def file_size
        read_property(:file_size)
      end

      # Size of the application / package (e.g. 18MB). In the absence of a unit (MB, KB etc.), KB will be assumed.
      def file_size=(value)
        write_property(:file_size, value)
      end

      # URL at which the app may be installed, if different from the URL of the item.
      def install_url
        read_property(:install_url)
      end

      # URL at which the app may be installed, if different from the URL of the item.
      def install_url=(value)
        write_property(:install_url, value)
      end

      # Minimum memory requirements.
      def memory_requirements
        read_property(:memory_requirements)
      end

      # Minimum memory requirements.
      def memory_requirements=(value)
        write_property(:memory_requirements, value)
      end

      # Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
      def operating_system
        read_property(:operating_system)
      end

      # Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
      def operating_system=(value)
        write_property(:operating_system, value)
      end

      # Permission(s) required to run the app (for example, a mobile app may require full internet access or may run only on wifi).
      def permissions
        read_property(:permissions)
      end

      # Permission(s) required to run the app (for example, a mobile app may require full internet access or may run only on wifi).
      def permissions=(value)
        write_property(:permissions, value)
      end

      # Processor architecture required to run the application (e.g. IA64).
      def processor_requirements
        read_property(:processor_requirements)
      end

      # Processor architecture required to run the application (e.g. IA64).
      def processor_requirements=(value)
        write_property(:processor_requirements, value)
      end

      # Description of what changed in this version.
      def release_notes
        read_property(:release_notes)
      end

      # Description of what changed in this version.
      def release_notes=(value)
        write_property(:release_notes, value)
      end

      # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
      # Superseded by `softwareRequirements`.
      def requirements
        read_property(:requirements)
      end

      # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
      # Superseded by `softwareRequirements`.
      def requirements=(value)
        write_property(:requirements, value)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Supersedes `runtime`.
      def runtime_platform
        read_property(:runtime_platform)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Supersedes `runtime`.
      def runtime_platform=(value)
        write_property(:runtime_platform, value)
      end

      # A link to a screenshot image of the app.
      def screenshot
        read_property(:screenshot)
      end

      # A link to a screenshot image of the app.
      def screenshot=(value)
        write_property(:screenshot, value)
      end

      # Additional content for a software application.
      def software_add_on
        read_property(:software_add_on)
      end

      # Additional content for a software application.
      def software_add_on=(value)
        write_property(:software_add_on, value)
      end

      # Software application help.
      def software_help
        read_property(:software_help)
      end

      # Software application help.
      def software_help=(value)
        write_property(:software_help, value)
      end

      # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
      # Supersedes `requirements`.
      def software_requirements
        read_property(:software_requirements)
      end

      # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
      # Supersedes `requirements`.
      def software_requirements=(value)
        write_property(:software_requirements, value)
      end

      # Version of the software instance.
      def software_version
        read_property(:software_version)
      end

      # Version of the software instance.
      def software_version=(value)
        write_property(:software_version, value)
      end

      # Storage requirements (free space required).
      def storage_requirements
        read_property(:storage_requirements)
      end

      # Storage requirements (free space required).
      def storage_requirements=(value)
        write_property(:storage_requirements, value)
      end

      # Supporting data for a SoftwareApplication.
      def supporting_data
        read_property(:supporting_data)
      end

      # Supporting data for a SoftwareApplication.
      def supporting_data=(value)
        write_property(:supporting_data, value)
      end
    end
  end
end
