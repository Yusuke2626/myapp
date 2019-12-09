class AddressController < ApplicationController

  def index
    @address = Address.new
  end

end
