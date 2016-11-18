module HolidaysImg
  module ImageTagWrapper
    def holidays_image_tag(source, options={})
      src = "testing_#{source}_#{HolidaysImg.region}"

      image_tag(src, options)
    end
  end
end
