# アプリ名
飲食店における手書きからアプリ上で簡潔できるオーダーアプリ


# 概要
店舗者  料理の出品・編集・更新・削除・詳細/一覧閲覧機能
購入者  料理の一覧/詳細閲覧・購入機能


# 本番環境


# 制作背景（意図）
経歴・職務履歴書でも記載しましたが、イタリアン飲食店店長の幼馴染の現場を拝見し、実際に働かせていただいて感じたのがアナログ作業が多く、仕事量が膨大でした。
その膨大さを少しでも減らすことができないかと思い、アナログ作業をデジタルに変化することでその問題を解決できるのではないかと考えました。
その第一段階としてオーダーを取る際、アプリ上でやり取りを完結したいと思い今回作成いたしました。


# DEMO

## トップページ(料理一覧表示)

## ユーザー新規登録

## ユーザーログイン

## 料理出品機能

## 料理情報詳細機能

## 料理編集機能

## 料理削除機能


# 今後実装していきたい機能

## 料理検索機能

## 


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

