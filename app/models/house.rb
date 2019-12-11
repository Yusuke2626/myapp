class House < ApplicationRecord


# belongs_to:user

  has_many:users, through: :favorites
  belongs_to:user

  has_many:favorites, :dependent => :destroy
  has_many:images, :dependent => :destroy
  has_many:qaforms

  has_many:messages

  has_many:addresses, :dependent => :destroy
  accepts_nested_attributes_for :addresses

  # belongs_to:prefecture


  accepts_nested_attributes_for :images

 # mount_uploaders :images, ImageUploader

  validates :prefecture_id, presence: true

  # def pref_change
  #   pref_name = self.address.prefecture_code
  #     if pref_name == "北海道"
  #     house.prefecture_id = 0
  #    end
  # end


 # def prefecture_id
 #
 # end


end
