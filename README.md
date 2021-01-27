## テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| unique             | string | null: false |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |
| last               | string | null: false |
| first              | string | null: false |
| lastf              | string | null: false |
| firstf             | string | null: false |

### Association
 
- has_many : items
- has_many : purchases

## items テーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| user           | string  | null: false |
| category_id    | integer | null: false |
| condition_id   | integer | null: false |
| charges_id     | integer | null: false |
| area_id        | integer | null: false |
| estimated_id   | integer | null: false |
| name           | string  | null: false | 
| money          | integer | null: false |
| description    | string  | null: false |

### Association
 
- has_one : purchase
- belongs_to : user

## purchases テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| user       | string | null: false |
| item       | string | null: false |

### Association
 
- belongs_to : user
- belongs_to : item
- has_one : street

## streets テーブル

| Column       | Type       | Options                        |
| ----------   | ---------- | ------------------------------ |
| postal       | text       | null: false                    |
| prefectures  | references | null: false, foreign_key: true |
| municipality | references | null: false, foreign_key: true |
| address      | string     | null: false                    |
| building     | string     | null: false                    |
| phone        | text       | null: false                    |

### Association
 
- belongs_to : purchase