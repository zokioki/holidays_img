require 'rails'

module HolidaysImg
  class Railtie < ::Rails::Railtie
    ActiveSupport.on_load( :action_view ) { include HolidaysImg::ImageTagWrapper }
  end
end
