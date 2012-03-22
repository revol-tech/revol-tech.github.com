# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["1|user@gmail.com|password|false|user3|malainabirseu|Banesor|4444444","2|user2@gmail.com|password|false|user2|wscl|Balaju|4442222","9|admins3@gmail.com|bhaktapur11|true|admin|revoltech|Shallaghari|6666666"].each do |t|
    id,email,encrypted_password,admin,name,organization,address,phone_no = t.chomp.split("|")
    User.create!(:id => id, :email => email, :password => encrypted_password,:admin=>admin,:name=>name,:organization=>organization,:address=>address,:phone_no=>phone_no)
  end

["Malai Nabirseu|Neena Thapa|ingo for orphan children|1/2/2012|30/3/2012|https://github.com/revol-tech/MalaiNabirseu|1","Women Support Co-operative|Puspha Shrestha|Micro financing co-operative|13/12/2011|1/2/2012|https://github.com/revol-tech/WSC|2"].each do |t|
    title,client,description,start_date,end_date,repo,user_id = t.chomp.split("|")
    Project.create!(:title=>title, :client => client,:description=>description,:start_date=>start_date,:end_date=>end_date,:repo=>repo, :user_id =>user_id)
  end
