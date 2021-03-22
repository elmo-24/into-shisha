## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| birth_date         | date     | null: false               |

### Association

- has_many :reviews
- has_many :comments
- has_many :stores

## reviews テーブル

| Column                | Type        | Options                        |
| --------------------- | ----------- | ------------------------------ |
| visit_date            | date        | null: false                    |
| message               | text        | null: false                    |
| flavor                | string      | null: false                    |
| companion_id          | integer     | null: false                    |
| price                 | string      | null: false                    |
| user                  | references  | null: false, foreign_key: true |
| store                 | references  | null: false, foreign_key: true |



### Association

- belongs_to :user
- has_many :comments
- belongs_to :store

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| review | references | null: false, foreign_key: true |
| text   | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :review

## stores テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| store_name       | string     | null: false                    |
| store_type_id    | integer    |                                |
| postal_code      | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| house_number     | string     | null: false                    |
| phone_number     | string     | null: false                    |
| building_name    | string     |                                |
| access           | string     | null: false                    |
| home_page        | string     |                                |
| day_off          | string     |                                |
| opening_hours    | string     |                                |
| minimum_charge   | string     | null: false                    |
| price_info       | string     |                                |
| vibe_id          | integer    |                                |
| bring_id         | integer    |                                |
| concent_id       | integer    |                                |
| alcohol_id       | integer    |                                |
| smoke_id         | integer    |                                |
| flavor_sale_id   | integer    |                                |
| wifi_id          | integer    |                                |
| card_id          | integer    |                                |
| additional_info  | text       |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

