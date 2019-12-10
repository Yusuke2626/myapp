# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# $ = jQuery.noConflict()
$ ->
  $("#house_addresses_attributes_0_postcode").jpostal({
    postcode: ["#house_addresses_attributes_0_postcode"],
    address: {
                "#house_addresses_attributes_0_prefecture_code" : "%3",
                "#house_addresses_attributes_0_address_city"     :"%4",
                "#house_addresses_attributes_0_address_street"   : "%5%6%7"
                }
  });
