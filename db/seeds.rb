# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SearchPerson.create(:name =>'~5人', :min => 1, :max => 5)
SearchPerson.create(:name =>'6~10人', :min => 6, :max => 10)
SearchPerson.create(:name =>'11~20人', :min => 11, :max => 20)
SearchPerson.create(:name =>'21~30人', :min => 21, :max => 30)
SearchPerson.create(:name =>'31人~', :min => 31, :max => 99999)
SearchPerson.create(:name =>'指定しない', :min => 1, :max => 99999)
