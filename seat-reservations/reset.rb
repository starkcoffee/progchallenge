require 'yaml'

File.open('seats.yaml', 'w') { |f| f.write (YAML::dump((1...21).to_a)) }