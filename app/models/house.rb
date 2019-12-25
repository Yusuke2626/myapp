class House < ApplicationRecord

  has_many:users, through: :favorites
  belongs_to:user

  has_many:favorites, :dependent => :destroy
  has_many:images, :dependent => :destroy
  has_many:qaforms

  has_many:messages

  has_many:addresses, :dependent => :destroy
  accepts_nested_attributes_for :addresses

  belongs_to:prefecture

  accepts_nested_attributes_for :images

  validates :prefecture_id, presence: true



end
