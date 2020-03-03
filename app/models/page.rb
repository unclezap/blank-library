class Page < ApplicationRecord
    has_many :lines
    belongs_to :book

    def self.make_with_lines(book)
       
        @book = book
        @page = Page.create

        40.times do
            Line.make_with_text(@page)
        end

        @book.pages << @page
        @page.save
        @page
    end

end
