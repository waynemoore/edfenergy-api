# Edfenergy::Api

Screen Scraper API for EDF Energy online account.

## Why?

I want to submit meter readings programatically and I'm tired of waiting for an official API.

## Limitations

Currently all it does is authenticate and return the meter reading.  Submitting the reading is next on my list.

## Installation

Add this line to your application's Gemfile:

    gem 'edfenergy-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edfenergy-api

## Usage

```ruby
require 'edfenergy/api'
api = Edfenergy::Api.new
api.login('EMAIL ADDRESS', 'PASSWORD') # => true
api.meter_reading # => 12345
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
