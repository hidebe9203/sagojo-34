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

|Column  |Type  |Options                  |
|--------|------|-------------------------|
|name    |string|null: false              |
|email   |string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :likes, dependent: :destroy
- has_one :profile
- has_many :workstatuses, dependent: :destroy



## profilesテーブル

|Column               |Type      |Options          |
|---------------------|----------|-----------------|
|user_id              |references|foreign_key: true|
|background_image     |text      |                 |
|person_image         |text      |                 |
|catchphrase          |text      |                 |
|birth                |date      |                 |
|gender               |integer   |null: false      |
|phone_number         |integer   |unique: true     |
|current_place        |string    |                 |
|language_skill       |text      |                 |
|career               |text      |                 |
|travel_history       |text      |                 |
|performance          |text      |                 |
|expected_income      |text      |                 |
|preparatory_period   |text      |                 |
|desired_travel_detail|text      |                 |
|self_introduction    |text      |                 |
|equipment            |text      |                 |
|passion              |text      |                 |
|Region               |text      |null: false      |
|When_possible        |text      |null: false      |
|Car_coverage         |text      |                 |

### Association
- belongs_to :user
- has_many :travelplans, dependent: :destroy
- has_many :relationlinks, dependent: :destroy
- has_many :SNSaccounts, dependent: :destroy
- has_many :profile_tags, dependent: :destroy
- has_many :tags, through: :profile_tags, dependent: :destroy
- has_one :address



## addressesテーブル

|Column     |Type      |Options          |
|-----------|----------|-----------------|
|profile_id |references|foreign_key: true|
|postal_code|integer   |                 |
|state      |string    |                 |
|city       |string    |                 |
|address1   |string    |                 |
|address2   |string    |                 |

### Association
- belongs_to :profile


## travelplansテーブル

|Column               |Type      |Options          |
|---------------------|----------|-----------------|
|profile_id           |references|foreign_key: true|
|departure_date       |date      |                 |
|return_date          |date      |                 |
|place                |string    |                 |

### Association
- belongs_to :profile



## relationlinksテーブル

|Column     |Type      |Options          |
|-----------|----------|-----------------|
|profile_id |references|foreign_key: true|
|link       |text      |                 |
|pv_number  |string    |                 |

### Association
- belongs_to :profile



## SNSaccountsテーブル

|Column         |Type      |Options          |
|---------------|----------|-----------------|
|profile_id     |references|foreign_key: true|
|link           |text      |                 |
|follower_number|string    |                 |

### Association
- belongs_to :profile


## profile_tagsテーブル
|Column    |Type      |Options          |
|----------|----------|-----------------|
|profile_id|references|foreign_key: true|
|tag_id    |references|foreign_key: true|

### Association
- belongs_to :profile
- belongs_to :tag



## likesテーブル

|Column |Type      |Options          |
|-------|----------|-----------------|
|user_id|references|foreign_key: true|
|work_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :work



## tagsテーブル

|Column|Type  |Options                |
|------|------|-----------------------|
|name  |string|unique: true, add_index|

### Association
- has_many :work_tags, dependent: :destroy
- has_many :works, through: :work_tags, dependent: :destroy
- has_many :column_tags, dependent: :destroy
- has_many :columns, through: :column_tags, dependent: :destroy
- has_many :profile_tags, dependent: :destroy
- has_many :profiles, through: :profile_tags, dependent: :destroy



## companiesテーブル

|Column      |Type   |Options                  |
|------------|-------|-------------------------|
|company_name|string |null: false, unique: true|
|name        |string |null: false              |
|number      |integer|null: false, unique: true|
|email       |string |null: false, unique: true|
|password    |string |null: false, unique: true|

### Association
- has_many :works, dependent: :destroy

## Worksテーブル
|column         |Type           |Options          |
|---------------|---------------|-----------------|
|company_id     |references     |foreign_key: true|
|title          |string         |null: false      |
|content        |text           |null: false      |
|image          |text           |null: false      |
|detail         |text           |null: false      |
|upper          |string         |                 |
|under          |string         |                 |
|condition      |string         |                 |
|duration       |string         |null: false      |
|requirement    |text           |null: false      |
|member         |string         |null: false      |
|limit          |date           |null: false      |

### Association
- has_many :work_tags, dependent: :destroy
- has_many :tags, through: :work_tags, dependent: :destroy
- belongs_to :occupation
- belongs_to :company
- has_many :work_spots, dependent: :destroy
- has_many :spots, through: :work_spots, dependent: :destroy



## work_spotsテーブル
|column         |Type           |Options          |
|---------------|---------------|-----------------|
|work_id        |references     |foreign_key: true|
|spot_id        |references     |foreign_key: true|


## Association
- belongs_to :work
- belongs_to :spot



## spotsテーブル
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|spot           |string         |unique: true, add_index       |

## Association
- has_many :work_spots, dependent: :destroy
- has_many :works, through: :work_spots, dependent: :destroy



## work_tagsテーブル

|Column |Type      |Options           |
|-------|----------|------------------|
|tag_id |references|foreingn_key: true|
|work_id|references|foreign_key: true |

### Association
- belongs_to :work
- belongs_to :tag



## occupationsテーブル

|Column|Type  |Options                  |
|------|------|-------------------------|
|name  |string|unique: true, null: false|

### Association
- has_many :works, dependent: :destroy



## columnsテーブル

|column    |Type      |Options          |
|----------|----------|-----------------|
|genre_id  |references|foreign_key: true|
|title     |string    |null: false      |
|content   |text      |null: false      |
|image     |text      |null: false      |

### Association
- has_many :column_tags, dependent: :destroy
- has_many :tags, through: :column_tags, dependent: :destroy
- belongs_to :genre



## column_tagsテーブル

|Column   |Type      |Options                     |
|---------|----------|----------------------------|
|tag_id   |references|foreign_key: true, add_index|
|column_id|references|foreign_key: true, add_index|

### Association
- belongs_to :tag
- belongs_to :column



## opinionsテーブル

|Column|Type  |Options    |
|------|------|-----------|
|email |string|null: false|
|text  |text  |null: false|

### Association



## genresテーブル

|Column|Type  |Options                  |
|------|------|-------------------------|
|name  |string|unique: true, null: false|

### Association
- has_many :columns, dependent: :destroy



## workstatusesテーブル

|Column |Type      |Options          |
|-------|----------|-----------------|
|user_id|references|foreign_key: true|
|work_id|references|foreign_key: true|
|status |integer   |null: false      |

### Association
- belongs_to :user
- belongs_to :work
