require File.join(File.dirname(__FILE__), "lib/motion/meter/version")

Gem::Specification.new do |gem|
  gem.name = "motion-meter"
  gem.version = Motion::Meter::VERSION
  gem.date = "2015-05-07"
  gem.summary = "Simple visual meter control with color based thresholds"
  gem.description = "motion-meter is a simple bar meter control with color based thresholds, useful for displaying a value such as an audio level according to whatever threshold and color rules you want to setup."
  gem.authors = ["Elliott Draper"]
  gem.email = "el@kickcode.com"
  gem.files = [Dir.glob("lib/**/*.rb"), "README.md"].flatten
  gem.license = "MIT"
end