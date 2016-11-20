module HolidaysImg
  module ImageTagWrapper
    def holidays_image_tag(source, options={})
      date = options[:date] || Date.today
      holiday = Holidays.on(date, HolidaysImg.region).first

      if holiday
        substring_index = source.rindex('.')

        if HolidaysImg.whitelist.empty? || HolidaysImg.whitelist.include?(holiday.name)
          source.insert(substring_index, "_#{holiday[:name].parameterize('_')}")
        end
      end

      image_tag(source, options)
    end
  end
end
