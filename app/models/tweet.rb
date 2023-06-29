class Tweet < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_full_text, against: {
        description: 'A'
        user_name: 'B'
    }
end
