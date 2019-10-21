module ImageHelper
  extend ActiveSupport::Concern

  class_methods do
    def image_url(workout)
      if workout.image.attached?
        Rails.application.routes.url_helpers.url_for(workout.image)
      else
        ''
      end
    end
  end
end

# Rails.application.routes.url_helpers.rails_blob_path(workout.image)
# "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0468c3462ac63943472b9e5acfd39131fd0c843b/Fri,%2018%20Oct%202019%2020-27-11%20GMT-ValentinoWong"

# Rails.application.routes.url_helpers.url_for(workout.image)
# host defined in: /config/environments/development.rb
# "http://10.9.109.36:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0468c3462ac63943472b9e5acfd39131fd0c843b/Fri,%2018%20Oct%202019%2020-27-11%20GMT-ValentinoWong" 