class Image < ApplicationRecord


mount_uploader :image1 , ImageUploader
mount_uploader :image2 , ImageUploader
mount_uploader :image3 , ImageUploader
mount_uploader :image4 , ImageUploader
mount_uploader :image5 , ImageUploader
belongs_to :house

end
