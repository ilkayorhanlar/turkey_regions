class TurkeyRegions
  def self.regions
    items = []
    source = YAML.load_file(File.join((File.dirname __dir__), 'lib', 'data', 'regions_and_cities.yaml'))
    source.each do |region|
      items << { id: region[0], name: region[1]['translations'][I18n.locale.to_s.split('-')[0]] }
    end

    items
  end

  def self.cities_by_region(region, options = { include_city_name: false })
    begin
      source = YAML.load_file(File.join(File.dirname(__FILE__), 'data', 'regions_and_cities.yaml'))
      matched_region = source.select { |r| r == region }
  
      if options[:include_city_name]
        matched_region[region]['subdivisions']
      else
        matched_region[region]['subdivisions'].map { |s| s['code'] }
      end
    rescue
      raise StandardError.new('given region could not be found')
    end
  end
end
