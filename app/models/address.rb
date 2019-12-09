class Address < ApplicationRecord




  include JpPrefecture
  jp_prefecture :prefecture_code



  def prefecture_name
    JpPrefecture::Prefecture.find(code:prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name:prefecture_name).code
  end

  # geocorded_by :address
  # after_validation :geocode

  def address
    "%s %s %s %s"%([self.prefecture_code,self.address_city,self.address_street,self.address_building])
  end


  belongs_to:house

  geocoded_by :address
  after_validation :geocode

end
