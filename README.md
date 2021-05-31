# README

## users テーブル

|       Column       |  Type  | options                   |
|:------------------:|:------:|:-------------------------:| 
| nickname           | string | null: false               |
| email              | string |              unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :menus
- has_many :purchases


## menus テーブル

|        Column          |    Type    | options                       |
|:----------------------:|:----------:|:-----------------------------:|
| product_name           | string     | null: false                   |
| product_description    | text       | null: false                   |
| product_category_id    | integer    | null: false                   |
| price                  | integer    | null: false                   |
| user                   | references | foreign_key: true             |

### Association

- belongs_to :user
- has_many :purchases


## carts テーブル




## purchases テーブル

|        Column       |    Type    | options            |
|:-------------------:|:----------:|:------------------:|
| user                | references | foreign_key: true  |
| menu                | references | foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :menu

