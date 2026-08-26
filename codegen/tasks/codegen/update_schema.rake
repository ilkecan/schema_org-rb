namespace :codegen do
  desc 'Download a pinned schema.org release'
  task :update_schema, [:version] do |_task, args|
    require 'tmpdir'
    require 'tempfile'
    require 'httparty'
    require './codegen/system/boot'

    version = args[:version].to_s
    abort 'An explicit schema version is required' if version.empty? || version == 'main'

    url = "https://raw.githubusercontent.com/schemaorg/schemaorg/#{version}/data/schema.ttl"
    puts "Downloading #{url}"
    response = HTTParty.get(url)
    abort "Failed to download: #{response.code} #{response.message}" unless response.success?

    Dir.mktmpdir('schema-org-update') do |directory|
      schema_file = File.join(directory, 'schema.ttl')
      File.write(schema_file, response.body)
      parser = SchemaOrg::Codegen::Parser.new(schema_file:)
      SchemaOrg::Codegen::Vocabulary.new(parser:, strict: false)
      target = Pathname('codegen/data/schema.ttl')
      Tempfile.create(['schema.ttl', '.tmp'], target.dirname.to_s) do |temporary|
        temporary.write(response.body)
        temporary.flush
        temporary.fsync
        File.rename(temporary.path, target)
      end
      File.write('codegen/data/SCHEMA_VERSION.txt', version)
    end
    puts "Downloaded schema.ttl (version: #{version})"
  end
end
