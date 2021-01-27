## テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |
| last               | string | null: false |
| first              | string | null: false |
| lastf              | string | null: false |
| firstf             | string | null: false |

### Association
 
- has_many : items
- has_many : prchase

## items テーブル

| Column         | Type    | Options                         |
| -------------- | ------- | ------------------------------- |
| seller         | string  | null: false                     |
| category_id    | integer | null: false, foreign_key: true  |
| condition_id   | integer | null: false                     |
| charges_id     | integer | null: false                     |
| area_id        | integer | null: false, foreign_key: true  |
| estimated_id   | integer | null: false, foreign_key: true  |
| name           | string  | null: false                     |
| money_id       | integer | null: false                     |
| description    | string  | null: false                     |

### Association
 
- has_one : prchase
- belongs_to : user

## prchases テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| money      | string | null: false |

### Association
 
- belongs_to : user
- belongs_to : item
- has_one : street

## street テーブル

| Column       | Type       | Options                        |
| ----------   | ---------- | ------------------------------ |
| postal       | text       | null: false                    |
| prefectures  | references | null: false, foreign_key: true |
| municipality | references | null: false, foreign_key: true |
| address      | string     | null: false                    |
| building     | string     | null: false                    |
| phone        | text       | null: false                    |

### Association
 
- belongs_to : prchase