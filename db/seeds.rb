# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["user@gmail.com|password|false","admin@gmail.com|bhaktapur11|true"].each do |t|
    email,encrypted_password,admin = t.chomp.split("|")
    User.create!(:email => email, :password => encrypted_password,:admin=>admin)
  end
