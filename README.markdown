# turkey_regions

turkey_regions is a library that contains Turkey regions and cities that connected to this regions


## Installation

``` bash
gem install turkey_regions
```

Or you can install via Bundler if you are using Rails. Add this line to your application's Gemfile:

```ruby
gem 'turkey_regions'
```

And then execute:

    $ bundle

## Basic Usage

``` ruby
regions = TurkeyRegions.regions
 => [{:id=>"marmara", :name=>"Marmara"}, {:id=>"aegean", :name=>"Aegean"}, {:id=>"mediterranean", :name=>"Mediterranean"}, {:id=>"black_sea", :name=>"Black Sea"}, {:id=>"central_anatolia", :name=>"Central Anatolia"}, {:id=>"southeastern_anatolia", :name=>"Southeastern Anatolia"}, {:id=>"eastern_anatolia", :name=>"Eastern Anatolia"}] 
 
cities = TurkeyRegions.cities_by_region('marmara')
=> ["10", "11", "16", "17", "22", "34", "39", "41", "54", "59", "77"] 
```

And if you need city names, send second paramater as true:

``` ruby
cities = TurkeyRegions.cities_by_region('marmara', true)
=> [{"code"=>"10", "name"=>"Balıkesir"}, {"code"=>"11", "name"=>"Bilecik"}, {"code"=>"16", "name"=>"Bursa"}, {"code"=>"17", "name"=>"Çanakkale"}, {"code"=>"22", "name"=>"Edirne"}, {"code"=>"34", "name"=>"İstanbul"}, {"code"=>"39", "name"=>"Kırklareli"}, {"code"=>"41", "name"=>"Kocaeli"}, {"code"=>"54", "name"=>"Sakarya"}, {"code"=>"59", "name"=>"Tekirdağ"}, {"code"=>"77", "name"=>"Yalova"}]
```

## Copyright

Copyright (c) 2016 hexorx. See LICENSE for details.
