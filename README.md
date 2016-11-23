# holidays_img

[![Gem Version](https://badge.fury.io/rb/holidays_img.svg)](https://badge.fury.io/rb/holidays_img)

This gem is a simple wrapper for Rails's `image_tag` helper. Leveraging the `holidays` gem, it allows you to easily load images based on the holiday occurring on any given date.

## Installation

Add the gem to your application's Gemfile:

```ruby
gem 'holidays_img'
```

And then execute:

```bash
$ bundle
```

## Usage

Simply use the `holidays_image_tag` helper as you would a standard Rails `image_tag`:

```
<%= holidays_image_tag 'image.jpg' %>
```

To ensure proper loading of images, adhere to the following naming convention:

- Have a default image, used for when a day does not fall on a holiday (also acts as a fallback for when a holiday image cannot be found)
- Name your holiday images in the following format: `original_name_holiday_name.ext`
- Ensure all holiday images are in the same directory

Naming Example:

```
image.jpg
image_christmas_day.jpg
image_new_year_s_day.jpg
image_independence_day.jpg
...
```

See the Holidays gem's [definition files](https://github.com/holidays/definitions) for a list of holidays for any available region.

## Configuration

You can configure options using an initializer:

```ruby
# config/initializers/holidays_img.rb

HolidaysImg.configure do |config|
  # Load holidays based on region, defaults to :us
  config.region    = :ca
  # Only load images for holidays you specify
  config.whitelist = ['Christmas Day', 'Mother\'s Day']
  # Load custom holidays from file, can also pass array of file paths
  config.custom_holidays = '/path/to/custom_holidays.yml'
end
```

For info on how to format custom holiday definitions, see the Holidays gem's [definition syntax documentation](https://github.com/holidays/definitions/blob/master/SYNTAX.md).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
