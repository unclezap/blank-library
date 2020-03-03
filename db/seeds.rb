# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ref_string = "abcdefghijlmnoprstuvyz ,."
string = ""

12.times do
    i = rand(0..24)
    string << ref_string[i]
end
    spine = string.split('').shuffle.join
source_book = Book.create(spine: spine)