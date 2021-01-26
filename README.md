## テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthday | string | null: false |

### Association
 
- has_many : items
- has_many : prchase

## items テーブル

| Column      | Type       | Options                         |
| ----------- | ---------- | ------------------------------- |
| seller      | string     | null: false                     |
| category    | references | nnull: false, foreign_key: true |
| condition   | string     | null: false                     |
| charges     | text       | null: false                     |
| area        | references | null: false, foreign_key: true  |
| estimated   | references | null: false, foreign_key: true  |
| name        | string     | null: false                     |
| image       | string     | null: false                     |
| money       | string     | null: false                     |
| description | string     | null: false                     |

### Association
 
- has_one : prchase
- belongs_to : user

## prchase テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| money      | string | null: false |
| card       | text   | null: false |
| expiration | text   | null: false |
| security   | text   | null: false |

### Association
 
- belongs_to : user
- belongs_to : items
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