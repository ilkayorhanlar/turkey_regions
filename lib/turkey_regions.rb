class TurkeyRegions
  def self.regions
    items = []
    region_source = YAML.load_file(File.join((File.dirname __dir__), 'lib', 'data', 'regions_and_cities.yaml'))
    region_source.each do |region|
      items << { id: region[0], name: region[1]['translations'][I18n.locale.to_s.split('-')[0]] }
    end

    items
  end

  def self.cities_by_region(region)
    begin
      region_source = YAML.load_file(File.join((File.dirname __dir__), 'lib', 'data', 'regions_and_cities.yaml'))
      founded_region = region_source.select { |r| r == region }
  
      founded_region[region]['subdivision_codes'].map(&:to_s)
    rescue
      raise StandardError.new('given region could not be found')
    end
  end
end
