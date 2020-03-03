class Gallery < ApplicationRecord
    has_many :walls
    # has_many :jaunts
    # has_many :users, through: :jaunts

    def self.make_with_walls
    
        @gallery = Gallery.create

        4.times do
            Wall.make_with_shelves(@gallery)
        end

        @gallery.save
        @gallery

    end

end