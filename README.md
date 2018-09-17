# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|VARCHAR|null: false|
|email|VARCHAR|null: false, unique: true|
|password|VARCHAR|null: false, unique: true|

### Association
- has_many :likes



## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|work_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :work



## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
- has_many :work_tags
- has_many :works, through: :work_tags
- has_many :column_tags
- has_many :colums, through: :column_tags



## companysテーブル

|Column|Type|Options|
|------|----|-------|
|company_name|VARCHAR|null: false, unique: true|
|name|VARCHAR|null: false|
|number|VARCHAR|null: false|
|email|VARCHAR|null: false, unique: true|
|password|VARCHAR|null: false, unique: true|

### Association



## worksテーブル

|Column|Type|Options|
|------|----|-------|
|occupations_id|integer|foreign_key: true|

### Association
- has_many :work_tags
- has_many :tags, through: :work_tags



## work_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_id|integer|foreingn_key: true|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :work
- belongs_to :tag



## occupationsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
- belongs_to :work



## columnsテーブル

|Column|Type|Options|
|------|----|-------|
||||

### Association
- has_many :column_tags
- has_many :column, through: :column_tags
- has_many :genre_columns
- has_many :genre, through: :genre_columns



## column_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_id|integer|foreign_key: true|
|columns_id|integer|foreign_key: true|

### Association
- belongs_to :tag
- belongs_to :genre



## opinionsテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|text|text|null: false|

### Association



## genreテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
- has_many :genre_columns
- has_many :columns, through: :genre_columns



## genre_columnsテーブル

|Column|Type|Options|
|------|----|-------|
|genre_id|integer|foreign_key: true|
|column_id|integer|foreign_key: true|

### Association
- belongs_to :genre
- belongs_to :column
