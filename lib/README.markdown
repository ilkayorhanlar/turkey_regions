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

Simply load a new country object using Country.new(*alpha2*) or the shortcut Country[*alpha2*]. An example works best.

``` ruby
regions = TurkeyRegions.regions
cities = TurkeyRegions.cities_by_region('marmara')
=> ["10", "11", "16", "17", "22", "34", "39", "41", "54", "59", "77"] 
```

## Copyright

Copyright (c) 2016 hexorx. See LICENSE for details.
