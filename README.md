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


## Works
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|company_id     |references     |null: false, foreign_key: true|
|title          |strings        |null: false                   |
|content        |text           |null: false                   |
|image          |strings        |null: false                   |
|detail         |text           |null: false                   |
|upper          |integer        |null: false,                  |
|under          |integer        |                              |  
|condition      |string         |null: false                   |
|duration       |string         |null: false                   |
|requirement    |text           |null: false                   |
|area_id        |references     |null: false, foreign_key: true|
|minmember      |integer        |null: false                   |
|maxmember      |integer        |                              |
|limit          |date           |null: false, foreign_key: true|

## Association
- belongs_to :company
- has_many :tags
- has_many :occupation

## areas
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|work_id        |references     |null: false, foreign_key: true|
|spot_id        |references     |null: false, foreign_key: true|

## Association
- belongs_to :work
- has_many   :spots

## spots
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|spot           |string         |index: true, unique: true     |

## Association
- belongs_to :area
