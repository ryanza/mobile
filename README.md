# Mobile

Very basic gem used in Rails applications to detect mobile devices.

## Installation

Add this line to your application's Gemfile:

    gem 'mobile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mobile

## Usage

There are two methods included in your controller and views.

Firstly `is_mobile_device?` which returns `true` or `false` depending on user agent and if the device is mobile or not.

Secondly `is_device?('device_type')` which returns `true` or `false` if the string argument matches with the user agent.

Thats it folks!

## Thanks

This code was ripped from the `mobile-fu` rubygem. :)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
