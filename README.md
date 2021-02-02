## テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| birthday           | date   | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_f        | string | null: false               |
| first_name_f       | string | null: false               |

### Association
 
- has_many : items
- has_many : purchases

## items テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| category_id    | integer    | null: false                    |
| condition_id   | integer    | null: false                    |
| charges_id     | integer    | null: false                    |
| area_id        | integer    | null: false                    |
| estimated_id   | integer    | null: false                    |
| name           | string     | null: false                    | 
| money          | integer    | null: false                    |
| description    | text       | null: false                    |

### Association
 
- has_one : purchase
- belongs_to : user

## purchases テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association
 
- belongs_to : user
- belongs_to : item
- has_one : street

## streets テーブル

| Column       | Type       | Options                        |
| ----------   | ---------- | ------------------------------ |
| postal       | string     | null: false                    |
| area_id      | integer    | null: false                    |
| purchase     | references | null: false, foreign_key: true |
| address      | string     | null: false                    |
| building     | string     | 
| phone        | string     | null: false                    |
| municipality | string     | null: false                    |

### Association
 
- belongs_to : purchase