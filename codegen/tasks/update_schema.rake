namespace :codegen do
  desc 'Download latest schema.ttl from Schema.org'
  task :update_schema, [:version] do |_t, args|
    require 'httparty'

    version = args[:version] || :main
    url = "https://raw.githubusercontent.com/schemaorg/schemaorg/#{version}/data/schema.ttl"

    puts "Downloading #{url}"

    response = HTTParty.get(url)

    abort "Failed to download: #{response.code} #{response.message}" unless response.success?

    File.write('codegen/data/schema.ttl', response.body)
    File.write('codegen/data/SCHEMA_VERSION.txt', version)
    puts "Downloaded schema.ttl (version: #{version})"
  end
end
