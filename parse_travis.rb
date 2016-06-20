require 'travis/yaml'

content = File.read('.travis.yml')
config = Travis::Yaml.parse! content
config.decrypt { |string| string.upcase }
puts config.serialize(:json, pretty: true)
