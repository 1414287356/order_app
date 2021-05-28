# README

## users テーブル

|       Column       |  Type  | options                   |
| ------------------ | ------ | ------------------------- | 
| nickname           | string | null: false               |
| email              | string |              unique: true |
| encrypted_password | string | null: false               |

### Association

_ has_many :menus
_ has_many :purchases


## menus テーブル

|        Column          |    Type    | options                       |
| ---------------------- | ---------- | ----------------------------- |
| product_name           | string     | null: false                   |
| product_description    | text       | null: false                   |
| product_category_id    | integer    | null: false                   |
| price                  | integer    | null: false                   |
| user                   | references | foreign_key: true             |

### Association

_ belongs_to :user
_ has_many :purchases


## purchases テーブル

|        Column       |    Type    | options            |
| ------------------- | ---------- | ------------------ |
| user                | references | foreign_key: true  |
| item                | references | foreign_key: true  |

### Association

_ belongs_to :user
_ belongs_to :menu
