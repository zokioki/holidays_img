module HolidaysImg
  module ImageTagWrapper
    def holidays_image_tag(source, options={})
      date = options[:date] || Date.today
      holiday = Holidays.on(date, HolidaysImg.region).first

      if holiday
        original_source = source.dup
        substring_index = source.rindex('.')

        if HolidaysImg.whitelist.empty? || HolidaysImg.whitelist.include?(holiday.name)
          source.insert(substring_index, "_#{holiday[:name].parameterize('_')}")

          unless File.exists?("#{Rails.root}/app/assets/images/#{source}")
            source = original_source
          end
        end
      end

      image_tag(source, options)
    end
  end
end
