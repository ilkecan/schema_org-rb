require 'dry/inflector'

App.register_provider(:inflector) do
  start do
    register(:inflector, Dry::Inflector.new)
  end
end
