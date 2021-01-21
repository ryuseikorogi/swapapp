# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| first_name | string | null: false |

｜ family_name ｜ string ｜ null:false ｜
| first_name_kana | string | null:false |
| family_name_kana | string | null:false |
| birth_day | date | null:false |
| nickname | string | null: false |
| email | string | null:false, unique: true, index:true |
| password | string | null:false |

### Assotiation

- has_many :items
- has_many :swap

## posts テーブル

｜ Column | Type | options |
｜ ------------------ | ---------- | ------------------------------ |
｜ cateory_id | integer | null: false |
｜ name | string | null: false |
| user | references | null: false, foreign_key: true |
| post_condition_id | integer | null: false |
| prefecture_id | integer | null: false |
| days_arrive_item_id | integer | null: false |
| post_discription | text | null: false |

### Assotiation

- belongs_to :user
- has_one :swap
- has_many :likes

### swap テーブル

| Column | Type | option |
| user | references | null: false, foreign_key: true |
| post | references | null: false, foreign_key: true |

### Assotiation

- belongs_to :user
- belongs_to :post
- has_one :posts_addres

### posts_addresses テーブル

| Column | Type | option |
| prefecture_id | string | null: false |
| building | string | |
| city | string | null: false |
| zip_code | string | null: false |
| phone_number | string | null: false |
| address | string | null: false, foreign_key:true |
| swap | reference | null: false, foreign_key:true |

### Assotiation

- belongs_to :swap

### comments テーブル

| user | references | null: false, foreign_key: true |
| post | references | null: false, foreign_key: true |
| comments | text | null: false |

### Assotiation

- has_many :user
- belongs_to :posts

### likes テーブル

| user | references | null: false, foreign_key: true |
| post | references | null: false, foreign_key: true |

### Assotiation

- has_many :user
- belongs_to :posts

### category_id テーブル

｜ category_id | integer | null: false |

### Assotiation

- belongs_to :posts
