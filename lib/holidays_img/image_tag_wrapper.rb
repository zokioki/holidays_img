module HolidaysImg
  module ImageTagWrapper
    def holidays_image_tag(source, options={})
      Holidays.load_custom(HolidaysImg.custom_holidays) if HolidaysImg.custom_holidays

      date = options[:date] || Date.today
      holiday = Holidays.on(date, HolidaysImg.region).first

      if holiday
        original_source = source.dup
        substring_index = source.rindex('.')

        if HolidaysImg.whitelist.blank? || HolidaysImg.whitelist.include?(holiday[:name])
          source.insert(substring_index, "_#{holiday[:name].parameterize(separator: '_')}")

          unless File.exists?("#{Rails.root}/app/assets/images/#{source}")
            source = original_source
          end
        end
      end

      image_tag(source, options)
    end
  end
end
