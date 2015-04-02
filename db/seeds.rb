# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Loading Vets"

vets = [{:name => 'Amith', :address => '1343 meadow creek dr', :city => 'Irving', :state => 'TX', :zip => "75038", :school => 'YALE University', :experience => 14},
        {:name => 'Bob', :address => '1343 meadow creek dr', :city => 'Irving', :state => 'TX', :zip => "75038", :school => 'Stanford University', :experience => 11},
        {:name => 'Susan', :address => '1343 meadow creek dr', :city => 'Irving', :state => 'TX', :zip => "75038", :school => 'Johns Hopkins University', :experience => 10}
]

vets.each do |v|
  v_obj = Vet.create(v)
  puts v_obj
end
puts "vets loaded"

['Jessie', 'Annie', 'Jhon'].each do |c|
  Customer.create(:name => c)
end

admin = User.create!(:email => 'admin@vets4pet.com', 
            :password => 'password', 
            :password_confirmation => 'password',
            :role => 'admin')
puts "admin created"

receptionist = User.create!(:email => 'receptionist@vets4pet.com',
                         :password => 'password',
                         :password_confirmation => 'password',
                         :role => 'receptionist')

Appointment.create!(:vet_id => 1, :customer => 'Nathan', :pet => 'Doggy', :visit_on => '2015/04/15 10:00', :reason => 'Not looking good')
Appointment.create!(:vet_id => 2, :customer => 'Bryan', :pet => 'Snoopy', :visit_on => '2015/04/07 15:00', :reason => 'Chases own tail')
Appointment.create!(:vet_id => 3, :customer => 'Ryan', :pet => 'Tipsy', :visit_on => '2015/04/08 14:00', :reason => 'Dreams of bones')

