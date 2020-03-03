class User < ApplicationRecord
    has_many :pages
    has_many :lines, through: :pages
end
