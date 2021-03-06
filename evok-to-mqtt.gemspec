
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "evok-to-mqtt/version"

Gem::Specification.new do |spec|
  spec.name          = "evok-to-mqtt"
  spec.version       = EvokToMqtt::VERSION
  spec.authors       = ["Marek Aufart"]
  spec.email         = ["aufi.cz@gmail.com"]

  spec.summary       = %q{A bridge between Unipi EVOK and MQTT message bus}
  spec.description   = %q{A bridge between Unipi EVOK and MQTT message bus as Ruby gem}
  spec.homepage      = "https://github.com/aufi/evok-to-mqtt"
  spec.license       = "Apache-2.0"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = ["bin"]
  spec.executables   = ["evok-to-mqtt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "em-mqtt", "~> 0.0.5"
  spec.add_dependency "jsonrpc-client", "~> 0.1.3"
  spec.add_dependency "websocket-eventmachine-client", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
