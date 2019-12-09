class TurkeyRegions
  def self.regions
    items = []
    region_source = YAML.load_file('/data/regions_and_cities.yaml')
    region_source.each do |region|
      items << { id: region[0], name: region[1]['translations'][I18n.locale.to_s.split('-')[0]] }
    end

    items
  end
end
