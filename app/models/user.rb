class User < ApplicationRecord
    # has_many :pages
    # has_many :lines, through: :pages
    has_many :jaunts
    # has_many :galleries, through: :jaunts

end
