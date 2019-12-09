# require 'csv'
# require 'zip'
#
# DLURL           = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
# SAVEDIR         = "db/"
# CSVROW_PREFNAME = 6
# CSVROW_CITYNAME = 7
#
# savePath = ""
#
# open(URI.escape(DLURL)) do |file|
#   ::Zip::File.open_buffer(file.read) do |zf|
#     zf.each do |entry|
#       savePath = SAVEDIR + entry.name
#       zf.extract(entry, savePath) { true }
#     end
#   end
# end
#
# CSV.foreach(savePath, encoding: "Shift_JIS:UTF-8") do |row|
#   # prefName = row[CSVROW_PREFNAME]
#   cityName = row[CSVROW_CITYNAME]
#   # pref = Pref.find_or_create_by(:name => prefName)
#   City.find_or_create_by(:name => cityName, pref_id: prefecture.id)
# end
#
# File.unlink savePath
