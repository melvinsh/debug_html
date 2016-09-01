Gem::Specification.new do |s|
  s.name        = 'debug_html'
  s.version     = '0.0.1'
  s.date        = '2016-09-01'
  s.summary     = 'Drop-in HTML page save and open.'
  s.description = "Drop-in HTML page save and open like capybara's save_and_open_page."
  s.authors     = ['Melvin Lammerts']
  s.email       = 'hi@melvin.sh'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'https://github.com/melvinsh/debug_html'
  s.license = 'MIT'
  s.required_ruby_version = '>= 1.9.3'
  s.add_runtime_dependency 'launchy', ['~> 2.4', '>= 2.4.3']
  s.add_development_dependency 'rspec', '~> 3.5'
end
