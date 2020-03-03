
class Line < ApplicationRecord
    belongs_to :page

    def self.make_with_text(page)
        
        @page = page
        @line = Line.new
        
        string = ""
        ref_string = "abcdefghijlmnoprstuvyz ,."
        80.times do
            i = rand(0..24)
            string << ref_string[i]
        end
        @line[:text] = string.split('').shuffle.join
        @page.lines << @line
        
        @line.save
        @line
    end

end
