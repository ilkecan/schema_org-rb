desc 'Generate Ruby files from the schema.ttl'
task :codegen do
  require "./codegen/system/boot"

  generator = App['generator']
  manifest = App['manifest']
  parser = App['parser']

  parser.classes.each do
    generator.generate SchemaOrg::Codegen::DataModels::Mixin.from_subject(it)
    generator.generate SchemaOrg::Codegen::DataModels::Type.from_subject(it)
  end
  generator.generate SchemaOrg::Codegen::DataModels::SchemaVersion.current

  manifest.stale_files.each { Pathname(it).delete }
  manifest.save
end
