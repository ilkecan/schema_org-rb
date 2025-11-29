require "active_support/concern"

module SchemaOrg
  module Mixins
    module SoftwareApplication
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :application_category # Type of software application, e.g. 'Game, Multimedia'.
        option :application_sub_category # Subcategory of the application, e.g. 'Arcade Game'.
        option :application_suite # The name of the application suite to which the application belongs (e.g. Excel belongs to Office).
        option :countries_not_supported # Countries for which the application is not supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
        option :countries_supported # Countries for which the application is supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
        option :device # Device required to run the application. Used in cases where a specific make/model is required to run the application.
        option :download_url # If the file can be downloaded, URL to download the binary.
        option :feature_list # Features or modules provided by this application (and possibly required by other applications).
        option :file_size # Size of the application / package (e.g. 18MB). In the absence of a unit (MB, KB etc.), KB will be assumed.
        option :install_url # URL at which the app may be installed, if different from the URL of the item.
        option :memory_requirements # Minimum memory requirements.
        option :operating_system # Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
        option :permissions # Permission(s) required to run the app (for example, a mobile app may require full internet access or may run only on wifi).
        option :processor_requirements # Processor architecture required to run the application (e.g. IA64).
        option :release_notes # Description of what changed in this version.
        option :requirements # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
        option :screenshot # A link to a screenshot image of the app.
        option :software_add_on # Additional content for a software application.
        option :software_help # Software application help.
        option :software_version # Version of the software instance.
        option :storage_requirements # Storage requirements (free space required).
        option :supporting_data # Supporting data for a SoftwareApplication.
        option :available_on_device # Device required to run the application. Used in cases where a specific make/model is required to run the application.
        option :software_requirements # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime).
      end
    end
  end
end
