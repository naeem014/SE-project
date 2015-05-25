# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
doctors = [
	{:Name => 'Aladdin', :Specialization => 'Cardiac surgeon', :Location => 'Defence', :email => 'a@mail.com', :password => '123'},
	{:Name => 'The Terminator', :Specialization => 'Dentist', :Location => 'Johar Town',  :email => 'aa@mail.com', :password => '1223'},
	{:Name => 'Harry', :Specialization => 'Physiotherapist', :Location => 'EME',  :email => 'b@mail.com', :password => '1230'}
]
Doctor.send(:attr_accessible, :Name, :Specialization, :Location)
doctors.each do |doctor|
	Doctor.create!(doctor)
end