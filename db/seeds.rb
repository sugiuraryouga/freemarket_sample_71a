# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

# lady = Category.create(:name=>"レディース")
# men  = Category.create(:name=>"メンズ")

# lady_tops = lady.children.create(:name=>"トップス")
# lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
# lady_onepiece = lady.children.create(:name=>"ワンピース")
# lady_pants = lady.children.create(:name=>"パンツ")
# lady_skirt = lady.children.create(:name=>"スカート")
# lady_bag = lady.children.create(:name=>"バッグ")
# lady_fashion_accessories = lady.children.create(:name=>"ファッション小物")
# lady_shoes = lady.children.create(:name=>"靴/シューズ")
# lady_accessories = lady.children.create(:name=>"アクセサリー")
# lady_hed_accessories = lady.children.create(:name=>"ヘアアクセサリー")
# lady_swimsuit_yukata = lady.children.create(:name=>"水着/浴衣")
# lady_formal_dress = lady.children.create(:name=>"フォーマル/ドレス")
# lady_cap = lady.children.create(:name=>"帽子")
# lady_roomwear = lady.children.create(:name=>"ルームウェア/パジャマ")
# lady_underwear = lady.children.create(:name=>"下着/アンダーウェア")
# lady_legwear = lady.children.create(:name=>"レッグウェア")
# lady_wig_extension = lady.children.create(:name=>"ウィッグ/エクステ")
# lady_other = lady.children.create(:name=>"レディース/その他")

# lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"}, {:name=>"シャツ/ブラウス(半袖/袖なし)"}])
# lady_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"}])
# lady_onepiece.children.create([{:name=>"ミニワンピース"}, {:name=>"膝丈ワンピース"}, {:name=>"ロングワンピース/マキシワンピース"}])
# lady_pants.children.create([{:name=>"デニム/ジーンズ"}, {:name=>"ショートパンツ"}, {:name=>"キュロット"}])
# lady_skirt.children.create([{:name=>"ミニスカート"}, {:name=>"膝丈スカート"}, {:name=>"ロングスカート"}])
# lady_bag.children.create([{:name=>"ショルダーバッグ"}, {:name=>"トートバッグ"}, {:name=>"ハンドバッグ"}])
# lady_fashion_accessories.children.create([{:name=>"財布"}, {:name=>"名刺入れ/定期入れ"}, {:name=>"コインケース"}])
# lady_shoes.children.create([{:name=>"ハイヒール/パンプス"}, {:name=>"ブーツ"}, {:name=>"ブーティ"}])
# lady_accessories.children.create([{:name=>"ネックレス"}, {:name=>"ピアス"}, {:name=>"イヤリング"}])
# lady_swimsuit_yukata.children.create([{:name=>"水着"}, {:name=>"浴衣"}, {:name=>"着物"}])
# lady_formal_dress.children.create([{:name=>"ウェデングドレス"}, {:name=>"ロングドレス"}, {:name=>"ミディアムドレス"}])
# lady_cap.children.create([{:name=>"キャップ"}, {:name=>"ニット帽"}, {:name=>"ハット"}])
# lady_roomwear.children.create([{:name=>"ルームウェア"}, {:name=>"パジャマ"}])
# lady_underwear.children.create([{:name=>"ブラ"}, {:name=>"ショーツ"}, {:name=>"ブラ＆ショーツセット"}])
# lady_legwear.children.create([{:name=>"ソックス"}, {:name=>"タイツ/ストッキング"}, {:name=>"レギンス/スパッツ"}])
# lady_wig_extension.children.create([{:name=>"ロングストレート"}, {:name=>"ロングカール"}, {:name=>"ショートストレート"}])


# Condition.create!(
#   [ 
#    {condition: '新品、未使用'},
#    {condition: '未使用に近い'},
#    {condition: '目立った傷や汚れなし'},
#    {condition: 'やや傷や汚れあり'},
#    {condition: '傷や汚れあり'},
#    {condition: '全体的に状態が悪い'}
#   ]
#  )
#   Deliveryaddre.create!(
#     [
#       {prefecture: '北海道'},
#       {prefecture: '青森県'},
#       {prefecture: '岩手県'},
#       {prefecture: '宮城県'},
#       {prefecture: '秋田県'},
#       {prefecture: '山形県'},
#       {prefecture: '福島県'},
#       {prefecture: '茨城県'},
#       {prefecture: '栃木県'},
#       {prefecture: '群馬県'},
#       {prefecture: '埼玉県'},
#       {prefecture: '千葉県'},
#       {prefecture: '東京都'},
#       {prefecture: '神奈川県'},
#       {prefecture: '山梨県'},
#       {prefecture: '長野県'},
#       {prefecture: '新潟県'},
#       {prefecture: '富山県'},
#       {prefecture: '石川県'},
#       {prefecture: '福井県'},
#       {prefecture: '岐阜県'},
#       {prefecture: '静岡県'},
#       {prefecture: '愛知県'},
#       {prefecture: '三重県'},
#       {prefecture: '滋賀県'},
#       {prefecture: '京都府'},
#       {prefecture: '大阪府'},
#       {prefecture: '兵庫県'},
#       {prefecture: '奈良県'},
#       {prefecture: '和歌山県'},
#       {prefecture: '鳥取県'},
#       {prefecture: '島根県'},
#       {prefecture: '岡山県'},
#       {prefecture: '広島県'},
#       {prefecture: '山口県'},
#       {prefecture: '徳島県'},
#       {prefecture: '香川県'},
#       {prefecture: '愛媛県'},
#       {prefecture: '高知県'},
#       {prefecture: '福岡県'},
#       {prefecture: '佐賀県'},
#       {prefecture: '長崎県'},
#       {prefecture: '熊本県'},
#       {prefecture: '大分県'},
#       {prefecture: '宮崎県'},
#       {prefecture: '鹿児島県'},
#       {prefecture: '沖縄県'},
#     ]
#   )


#  Deliveryspend.create!(
#   [
#   {spend: '指定なし'},
#   {spend: '１〜２日で発送'},
#   {spend: '２〜３日で発送'},
#   {spend: '４〜7日で発送'},
#   {spend: '発送は週末のみ'},
#   {spend: '発送は平日のみ'}
#     ]
#   )


# Deliverycharge.create!(
#   [
#   {price: '送料込み（出品者が負担）'},
#   {price: '着払い（購入者が負担）'},
#   ]
# )

# Brand.create!(
#  [ 
#   {name: 'ユニクロ'},
#   {name: 'GU'},
#   {name: 'しまむら'},
#   {name: '西松屋'},
#   {name: 'ノーブランド'},
#   {name: 'その他'}
#  ]
# )
  


# Payment.create( method: 'クレジットカード' )