desc 'Generate Ruby files from the schema.ttl'
task :codegen do
  require "./codegen/system/boot"

  generator = App['generator']
  manifest = App['manifest']
  parser = App['parser']

  generator.generate SchemaOrg::Codegen::DataModels::SchemaVersion.current
  parser.data_types.each do
    generator.generate SchemaOrg::Codegen::DataModels::DataType.from_subject(it)
  end
  parser.classes.each do
    generator.generate SchemaOrg::Codegen::DataModels::Mixin.from_subject(it)
    generator.generate SchemaOrg::Codegen::DataModels::Type.from_subject(it)
  end

  manifest.stale_files.each { Pathname(it).delete }
  manifest.save
end
