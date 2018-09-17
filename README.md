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
|column     |Type       |Options                       |
|-----------|-----------|------------------------------|
|company_id |references |null: false, foreign_key: true|
|appeal_id  |references |null: false, foreign_key: true|
|entry_id   |references |null: false, foreign_key: true|

## Association
- belongs_to : company
- has_many :tags
- has_many :occupation

## Appeals (本来ならマークダウン記法で書かれたファイルの中身)
|column        |Type        |Options                       |
|--------------|------------|------------------------------|
|work_id       |references  |null: false, foreign_key: true|
|title         |text        |null: false                   |
|image_id      |references  |null: false, foreign_key: true|
|heading_id    |references  |null: false, foreign_key: true|
|subheading_id |references  |null: false, foreign_key: true|
|text_id       |references  |null: false, foreign_key: true|
|plan_id       |references  |null: false, foreign_key: true|

## Association
- belongs_to :work
- has_many :images
- has_many :headings
- has_many :subheadings
- has_many :texts
- has_many :plans

## images
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|image          |string         |null: false                   |

## Association
- belongs_to :appeal

## headings
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|heading        |text           |                              |

## Association
- belongs_to :appeal

## subheadings
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|subheading     |text           |                              |

## Association
- belongs_to :appeal

## text
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|text           |text           |                              |

## Association
- belongs_to :appeal

## plans
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|text           |text           |                              |

## Association
- belongs_to :appeal

## headings
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|appeal_id      |references     |null: false, foreign_key: true|
|heading        |text           |                              |

## Association
- belongs_to :appeal


## Entries
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|work_id        |references     |null: false, foreign_key: true|
|requirement    |text           |null: false                   |
|return_id      |references     |null: false, foreign_key: true|
|duration       |strings        |null: false                   |
|condition      |text           |null: false                   |
|area_id        |references     |null: false, foreign_key: true|
|minmember      |integer        |null: false                   |
|maxmember      |integer        |                              |
|limit          |date           |null: false, foreign_key: true|

## Association
- belongs_to : work


## return
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|entry_id       |references     |null: false, foreign_key: true|
|upper          |integer        |null: false,                  |
|under          |integer        |                              |  
|conditions     |string         |null: false                   |

## Association
- belongs_to :entry


## areas
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|entry_id       |references     |null: false, foreign_key: true|
|spot_id        |references     |null: false, foreign_key: true|

## Association
- belongs_to :entry
- has_many   :spots

## spots
|column         |Type           |Options                       |
|---------------|---------------|------------------------------|
|spot           |strng          |index: true, unique: true     |

## Association
- belongs_to :area
