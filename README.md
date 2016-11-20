# holidays_img

This gem is a simple wrapper for Rails's `image_tag` helper. Leveraging the `holidays` gem, it allows you to easily load images based on the holiday occurring on any given date.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'holidays_img'
```

And then execute:

```bash
$ bundle
```

## Usage

Simply use the `holidays_image_tag` helper as you would a standard Rails `image_tag`. To ensure proper loading of images, adhere to the following naming convention:

- Have a default image, used for when a day does not fall on a holiday (also acts as a fallback for when a holiday image cannot be found)
- Name your holiday images in the following format: `original_name_holiday_name`
- Ensure all holiday images are in the same directory

Naming Examples:

```
image.jpg
image_good_friday.jpg
image_christmas_day.jpg
image_new_year_s_day.jpg
image_independence_day.jpg
etc...
```

See the holiday gem's [definition files](https://github.com/holidays/definitions) for a list of holidays for any available region.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
