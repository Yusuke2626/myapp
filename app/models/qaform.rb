class Qaform < ApplicationRecord


 belongs_to:user
 belongs_to:house

validates :text, presence: true

end
