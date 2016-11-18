require 'holidays_img/version'
require 'holidays_img/railtie'
require 'holidays_img/configuration'
require 'holidays'

module HolidaysImg
  extend Configuration

  define_setting :region, :us
  define_setting :holidays
end
