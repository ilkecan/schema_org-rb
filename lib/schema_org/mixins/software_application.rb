require "active_support/concern"

module SchemaOrg
  module Mixins
    module SoftwareApplication
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :application_category, optional: true # Type of software application, e.g. 'Game, Multimedia'.
        option :application_sub_category, optional: true # Subcategory of the application, e.g. 'Arcade Game'.
        option :application_suite, optional: true # The name of the application suite to which the application belongs (e.g. Excel belongs to Office).
        option :countries_not_supported, optional: true # Countries for which the application is not supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
        option :countries_supported, optional: true # Countries for which the application is supported. You can also provide the two-letter ISO 3166-1 alpha-2 country code.
        option :device, optional: true # Device required to run the application. Used in cases where a specific make/model is required to run the application. Superseded by `available_on_device`.
        option :download_url, optional: true # If the file can be downloaded, URL to download the binary.
        option :feature_list, optional: true # Features or modules provided by this application (and possibly required by other applications).
        option :file_size, optional: true # Size of the application / package (e.g. 18MB). In the absence of a unit (MB, KB etc.), KB will be assumed.
        option :install_url, optional: true # URL at which the app may be installed, if different from the URL of the item.
        option :memory_requirements, optional: true # Minimum memory requirements.
        option :operating_system, optional: true # Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
        option :permissions, optional: true # Permission(s) required to run the app (for example, a mobile app may require full internet access or may run only on wifi).
        option :processor_requirements, optional: true # Processor architecture required to run the application (e.g. IA64).
        option :release_notes, optional: true # Description of what changed in this version.
        option :requirements, optional: true # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime). Superseded by `software_requirements`.
        option :screenshot, optional: true # A link to a screenshot image of the app.
        option :software_add_on, optional: true # Additional content for a software application.
        option :software_help, optional: true # Software application help.
        option :software_version, optional: true # Version of the software instance.
        option :storage_requirements, optional: true # Storage requirements (free space required).
        option :supporting_data, optional: true # Supporting data for a SoftwareApplication.
        option :available_on_device, optional: true # Device required to run the application. Used in cases where a specific make/model is required to run the application. Supersedes `device`.
        option :software_requirements, optional: true # Component dependency requirements for application. This includes runtime environments and shared libraries that are not included in the application distribution package, but required to run the application (examples: DirectX, Java or .NET runtime). Supersedes `requirements`.
      end
    end
  end
end
