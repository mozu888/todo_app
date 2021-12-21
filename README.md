## テーブル設計

## plansテーブル
| column      | type    | option      |
| ----------- | ------- | ----------- |
| title       | string  | null: false |
| text        | text    | null: false |
| category_id | integer | null: false |
| time        | time    | null: false |
| date        | integer | null: false |

## association
belongs_to :user
belongs_to :category
has_many :comments

## usersテーブル
| column             | type   | option                         |
| ------------------ | ------ | ------------------------------ |
| name               | string | null: false                    |
| email              | string | null: false, unique_keys: true |
| encrypted_password | string | null: false                    |

## association
has_many :plans
has_many :comments
has_one :category

## categoriesテーブル
| column | type   | option      |
| ------ | ------ | ----------- |
| genre  | string | null: false |

## association
has_many :plans
belongs_to :user

## commentsテーブル
| column | type | option      |
| ------ | ---- | ----------- |
| text   | text | null: false |

## association
belongs_to :plan
belongs_to :user