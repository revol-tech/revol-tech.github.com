# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["1|user@gmail.com|password|false|user|malainabirseu|Banesor|4444444","2|user2@gmail.com|password|false|user2|wscl|Balaju|4442222","9|admin@gmail.com|bhaktapur11|true|admin|revoltech|Shallaghari|6666666"].each do |t|
    id,email,encrypted_password,admin,name,organization,address,phone_no = t.chomp.split("|")
    User.create!(:id => id, :email => email, :password => encrypted_password,:admin=>admin,:name=>name,:organization=>organization,:address=>address,:phone_no=>phone_no)
  end

["Malai Nabirseu|Neena Thapa|Ingo for orphan children|1/2/2012|30/3/2012|MalaiNabirseu|1|www.malainebirseu.com.np","Women Support Co-operative|Puspha Shrestha|Micro financing co-operative|13/12/2011|1/2/2012|WSC|2|www.wscl.com.np"].each do |t|
    title,client,description,start_date,end_date,repo,user_id,url = t.chomp.split("|")
    Project.create!(:title=>title, :client => client,:description=>description,:start_date=>start_date,:end_date=>end_date,:repo=>repo, :user_id =>user_id,:url=>url)
  end
