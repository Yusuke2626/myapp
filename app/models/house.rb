class House < ApplicationRecord


# belongs_to:user

has_many:users, through: :favorites
has_many:favorites, :dependent => :destroy
has_many:images, :dependent => :destroy
has_many:qaforms

belongs_to:prefecture
accepts_nested_attributes_for :images
 # mount_uploaders :images, ImageUploader

 validates :prefecture_id, presence: true


end
