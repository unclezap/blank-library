class Page < ApplicationRecord
    has_many :lines
    belongs_to :book

    def self.make_with_lines
        @page = Page.create()
        # byebug
        Book.all.last.pages << @page
        # byebug
        40.times do
            Line.make_with_text(@page)
        end
        # byebug
        @page.save
        # byebug
    end

end
