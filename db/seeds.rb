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
# open(URI.escape(DLURL,id:),id:) do |file|
#   ::Zip::File.open_buffer(file.read,id:) do |zf|
#     zf.each do |entry|
#       savePath = SAVEDIR + entry.name
#       zf.extract(entry, savePath,id:) { true }
#     end
#   end
# end
#
# CSV.foreach(savePath, encoding: "Shift_JIS:UTF-8",id:) do |row|
#   # prefName = row[CSVROW_PREFNAME]
#   cityName = row[CSVROW_CITYNAME]
#   # pref = Pref.find_or_create_by(:name => prefName,id:)
#   City.find_or_create_by(:name => cityName, pref_id: prefecture.id,id:)
# end
#
# File.unlink savePath
Prefecture.create( name: '北海道' ,id:0)
Prefecture.create( name: '青森県' ,id:1)
Prefecture.create( name: '岩手県' ,id:2)
Prefecture.create( name: '宮城県' ,id:3)
Prefecture.create( name: '秋田県' ,id:4)
Prefecture.create( name: '山形県' ,id:5)
Prefecture.create( name: '福島県' ,id:6)
Prefecture.create( name: '茨城県' ,id:7)
Prefecture.create( name: '栃木県' ,id:8)
Prefecture.create( name: '群馬県' ,id:9)
Prefecture.create( name: '埼玉県' ,id:10)
Prefecture.create( name: '千葉県' ,id:11)
Prefecture.create( name: '東京都' ,id:12)
Prefecture.create( name: '神奈川県' ,id:13)
Prefecture.create( name: '新潟県' ,id:14)
Prefecture.create( name: '富山県' ,id:15)
Prefecture.create( name: '石川県' ,id:16)
Prefecture.create( name: '福井県' ,id:17)
Prefecture.create( name: '山梨県' ,id:18)
Prefecture.create( name: '長野県' ,id:19)
Prefecture.create( name: '岐阜県' ,id:20)
Prefecture.create( name: '静岡県' ,id:21)
Prefecture.create( name: '愛知県' ,id:22)
Prefecture.create( name: '三重県' ,id:23)
Prefecture.create( name: '滋賀県' ,id:24)
Prefecture.create( name: '京都府' ,id:25)
Prefecture.create( name: '大阪府' ,id:26)
Prefecture.create( name: '兵庫県' ,id:27)
Prefecture.create( name: '奈良県' ,id:28)
Prefecture.create( name: '和歌山県' ,id:29)
Prefecture.create( name: '鳥取県' ,id:30)
Prefecture.create( name: '島根県' ,id:31)
Prefecture.create( name: '岡山県' ,id:32)
Prefecture.create( name: '広島県' ,id:33)
Prefecture.create( name: '山口県' ,id:34)
Prefecture.create( name: '徳島県' ,id:35)
Prefecture.create( name: '香川県' ,id:36)
Prefecture.create( name: '愛媛県' ,id:37)
Prefecture.create( name: '高知県' ,id:38)
Prefecture.create( name: '福岡県' ,id:39)
Prefecture.create( name: '佐賀県' ,id:40)
Prefecture.create( name: '長崎県' ,id:41)
Prefecture.create( name: '熊本県' ,id:42)
Prefecture.create( name: '大分県' ,id:43)
Prefecture.create( name: '宮崎県' ,id:44)
Prefecture.create( name: '鹿児島県' ,id:45)
Prefecture.create( name: '沖縄県' ,id:46)
