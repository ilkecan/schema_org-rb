namespace :codegen do
  desc "Download a pinned schema.org release"
  task :update_schema, [:version] do |_task, args|
    require "httparty"
    require "./codegen/system/boot"

    updater = SchemaOrg::Codegen::SchemaUpdater.new(
      downloader: ->(url) { HTTParty.get(url) },
      replacer: SchemaOrg::Codegen::Writer.new,
      target: Pathname.new("codegen/data/schema.ttl")
    )
    updater.update(args[:version].to_s)
    puts "Downloaded schema.ttl (version: #{args[:version]})"
  rescue SchemaOrg::Codegen::ValidationError => error
    abort error.message
  end
end
