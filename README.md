# Omniauth::Ges

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-ges'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-ges

## Usage

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ges, Settings.oauth.ges.key, Settings.oauth.ges.secret
end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
