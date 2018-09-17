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
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :likes
- has_one :profile



## profilesテーブル

|Column|Type|Options|
|------|----|-------|
||||

### Association
- belongs_to :user



## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|work_id|references|foreign_key: true|

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
- has_many :columns, through: :column_tags



## companiesテーブル

|Column|Type|Options|
|------|----|-------|
|company_name|string|null: false, unique: true|
|name|string|null: false|
|number|integer|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :works


## worksテーブル

|Column|Type|Options|
|------|----|-------|
|occupations_id|references|foreign_key: true|

### Association
- has_many :work_tags
- has_many :tags, through: :work_tags
- belongs_to :occupation
- belongs_to :company


## work_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_id|references|foreingn_key: true|
|work_id|references|foreign_key: true|

### Association
- belongs_to :work
- belongs_to :tag



## occupationsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true, null: false|

### Association
- has_many :works



## columnsテーブル

|Column|Type|Options|
|------|----|-------|
||||

### Association
- has_many :column_tags
- has_many :tags, through: :column_tags
- belongs_to :genre



## column_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_id|references|foreign_key: true|
|column_id|references|foreign_key: true|

### Association
- belongs_to :tag
- belongs_to :column



## opinionsテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|text|text|null: false|

### Association



## genresテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true, null: false|

### Association
- has_many :genres



## workstatusesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|work_id|references|foreign_key: true|
|status|integer||

### Association
- belongs_to :user
- belongs_to :work
