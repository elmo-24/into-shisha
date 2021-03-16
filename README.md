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

### Association

- belongs_to :user
- belongs_to :review

## stores テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| store_name       | string     | null: false                    |
| store_type_id    | integer    | null: false                    |
| postal_code      | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| house_number     | string     | null: false                    |
| phone_number     | string     | null: false                    |
| building_name    | string     |                                |
| access           | string     | null: false                    |
| home_page        | string     | null: false                    |
| day_off          | string     | null: false                    |
| opening_hours    | string     | null: false                    |
| minimum_charge   | string     | null: false                    |
| price_info       | string     | null: false                    |
| flavor           | string     | null: false                    |
| vibe_id          | integer    | null: false                    |
| bring_id         | integer    | null: false                    |
| concent_id       | integer    | null: false                    |
| alcohol_id       | integer    | null: false                    |
| smoke_id         | integer    | null: false                    |
| flavor_sale_id   | integer    | null: false                    |
| wifi_id          | integer    | null: false                    |
| card_id          | integer    | null: false                    |
| additional_info  | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

