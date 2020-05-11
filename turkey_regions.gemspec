Gem::Specification.new do |s|
  s.name        = 'turkey_regions'
  s.version     = '1.0.0'
  s.date        = '2019-12-09'
  s.summary     = 'Turkey regions'
  s.description = '7 Turkey regions and cities of regions'
  s.authors     = ['ilkay orhanlar']
  s.email       = 'ilkayorhanlar@gmail.com'
  s.files       = ['lib/turkey_regions.rb', 'lib/data/regions_and_cities.yaml']
  s.homepage    = 'https://github.com/ilkayorhanlar/turkey_regions'
  s.license = 'MIT'

  s.add_dependency 'rails', '>= 3.2.13'
end
