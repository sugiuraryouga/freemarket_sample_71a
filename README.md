## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string¥null: false|
|password|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_many :items dependent: :destroy
- has_many :likes dependent: :destroy
- has_many :comments dependent: :destroy
- has_one :deliver_adresses dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :profile, dependent: :destroy

## ordersテーブル
|Column|Type|Options|
|buyer_id|references|null: false, FK: true|
|item_id|references|null: false, FK: true|
### Association
- belongs_to :user
- belongs_to :item

## profilesテーブル
|Column|Type|Options|
|first_name|string|null:false|
|family_name|string|null:false|
|first_name_kana|string|null:false|
|family_name_kana|string|null:false|
|birth_year|date|null:false|
|birth_month|date|null:false|
|birth_day|date|null:false|
|introduction|text||		
|user|references|null: false, foreign_key: true|
### Association
belongs_to :user

## deliver_adressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, FK: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|adress1|string|null: false|
|adress2|string||	

### Association
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, FK: true|
|item_id|references|null: false, FK: true|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :item 

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, FK: true|
|item_id|references|null:false, FK: true|
### Association
- belongs_to :user
- belongs_to :item

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false, FK: true|
|name|string|null: false|
|text|text|null: false|
|price|integer|null: false|
|trading_status|integer|null: false|
|completed_at|datetime||	
### Association
- belongs_to :user
- belongs_to :category
- belongs_to :delivery_charge
- has_many :likes dependent: :destroy
- has_many :comments dependent: :destroy
- has_many :item_images dependent: :destroy

### item_conditionテーブル
|Column|Type|Options|
|------|----|-------|
|condition|integer|null: false|
### Association
- has_many :items

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, FK: true|
|image_url|string|null: false|
### Association
- belongs_to :item

## delivery_chargeテーブル
|Column|type|Option|
|------|----|-------|
|price|string|null: false|
<!-- 送料込み、送料購入者負担など -->
### Association
- belongs_to :item

# delivery_spendテーブル
|Column|type|Option|
|------|----|-------|
|spend|string|null: false|
<!-- 3~4日で発送など -->
### Association
- has_many :items

## categoriesテーブル
|Column|type|Option|
|------|----|-------|
|name|string|null: false|
|ancestry|string||	
### Association
- has_many :items
- has ancestry

## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|
### Association
- has_many :items

## credit_cardsテーブル
|Column|Type|Options|
|card_number|integer|null:false, unique: true|
|expiration_year|integer|null:false|
|expiration_month|integer|null:false|
|security_code|integer|null:false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to:user