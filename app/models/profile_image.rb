class ProfileImage < ApplicationRecord

  belongs_to :profile_images

  attachment :image
end
