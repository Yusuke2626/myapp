class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many:favorites, :dependent => :destroy
  has_many:houses , through: :favorites
  has_many:houses

  has_many:mails

  has_many:qaforms
  # has_many:favhouses, through: :favorites, source: :house
  #
  # def like(house)
  #   favorites.find_or_create_by(house_id:house.id)
  # end
  #
  # def unlike(house)
  #   favorie = favorites.find_by(house_id:house.id)
  #   favorie.destroy if favorite
  # end
  #
  # def favhouse?(house)
  #   self.favposts.include?(house)
  # end

end
