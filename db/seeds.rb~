# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["1|malainabirseu@gmail.com|julfikar|false|Neena|malainabirseu|Banesor|14444844","2|wscl@gmail.com|julfikar|false|pushpa|wscl|Balaju|4442222","3|revol-tech@gmail.com|julfikar|false|julfikar ali|revol-tech nepal|shallaghari bhaktapur|016617807","9|admin@gmail.com|julfikar|true|admin|revoltech|Shallaghari|6611616"].each do |t|
    id,email,encrypted_password,admin,name,organization,address,phone_no = t.chomp.split("|")
    User.create!(:id => id, :email => email, :password => encrypted_password,:admin=>admin,:name=>name,:organization=>organization,:address=>address,:phone_no=>phone_no)
  end

["Malai Nabirseu|Neena Thapa|Ingo for orphan children|1/2/2012|30/3/2012|MalaiNabirseu|1|www.malainebirseu.com.np","Women Support Co-operative|Puspha Shrestha|Micro financing co-operative|13/12/2011|1/2/2012|WSC|2|www.wscl.com.np","Revol-Tech Nepal|Julfikar Ali|Web App Development|13/12/2011|1/2/2012|revol-tech.github.com|3|www.revol-tech.com.np"].each do |t|
    title,client,description,start_date,end_date,repo,user_id,url = t.chomp.split("|")
    Project.create!(:title=>title, :client => client,:description=>description,:start_date=>start_date,:end_date=>end_date,:repo=>repo, :user_id =>user_id,:url=>url)
  end

["1|aaganja@revol-tech.com.np|System admin|kuber_aaganja","2|dhami@revol-tech.com.np|developer|ramesh_dhami","3|shobhab@revol-tech.com.np|develop|shobhab-shrestha","4|julfikar@revol-tech.com.np|ceo|julfikarali","5|shivwan@revol-tech.com.np|designer|shivwanjt","6|nirajshakya@revol-tech.com.np|business relation|niroj.shakya","7|kakshpati@gmail.com|Designer|kakshpati"].each do |t|
	id,name,role,attendance_password = t.chomp.split("|")
	Employee.create!(:id=>id, :name=>name, :role=>role, :attendance_password=>attendance_password)
  end
