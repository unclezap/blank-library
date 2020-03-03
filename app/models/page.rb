class Page < ApplicationRecord
    has_many :lines
    belongs_to :user
end
