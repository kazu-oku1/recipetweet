# usersテーブル
| Column              | Type   | Options                   |
| ------------------  | ------ | -----------               |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association
has_many :tweets
has_many :comments

# tweetsテーブル
| Column             | Type       | Options                        |
| ------------------ | ------     | -----------                    |
| title              | string     | null: false                    |
| material           | text       | null: false                    |
| guide              | text       |                                |
| recipe             | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_many :comments

# commentsテーブル
| Column             | Type       | Options                        |
| ------------------ | ------     | -----------                    |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| tweet               | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :tweet
