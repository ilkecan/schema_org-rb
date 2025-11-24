require "dry/system"

class App < Dry::System::Container
  use :zeitwerk

  configure do |config|
    config.root = Pathname('./codegen')
    config.component_dirs.add 'lib' do |dir|
      dir.memoize = true
      dir.namespaces.add 'schema_org/codegen', key: nil
    end
  end
end
