class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many:favorites, :dependent => :destroy
  has_many:houses , through: :favorites
  has_many:houses

  has_many:messages

  has_many:qaforms

end
