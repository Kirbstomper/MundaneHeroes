# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

powers = [{:name => "Summon Toddler", :description =>"Summon a small toddler to assist you"},
          {:name => "Talk To Demons", :description =>"You can talk to demons for advice"},
          {:name => "laser eyes", :description =>"you have laser vision, shit hurts tho"},
          {:name => "Hatception", :description =>"You can make people think you are wearing a hat"}
          ]
          
powers.each do |power|
  Power.create!(power)
end