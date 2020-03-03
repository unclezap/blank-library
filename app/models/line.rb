
class Line < ApplicationRecord
    belongs_to :page

    def self.make_with_text(page)
        @page = page
        # byebug
        @line = Line.new
        string = ""
        ref_string = "abcdefghijlmnoprstuvyz ,."
        80.times do
            i = rand(0..24)
            string << ref_string[i]
        end
        @line[:text] = string.split('').shuffle.join
        # byebug
        @page.lines << @line
        # byebug
        @line.save
        # byebug
    end

end
