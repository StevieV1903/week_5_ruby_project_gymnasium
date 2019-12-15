require('pry')

require_relative('../models/gym_members')
require_relative('../models/gym_sessions')


Member.delete_all()
# Session.delete_all()

member1 = Member.new({
  'first_name' => 'Richard',
  'last_name' => 'Jones',
  'date_of_birth' => '12/03/1990',
  'address' => '15 Letham Place, Edinburgh',
  'post_code' => 'EH118BD'})
member1.save

member2 = Member.new({
  'first_name' => 'Thomas',
  'last_name' => 'Reid',
  'date_of_birth' => '09/07/1985',
  'address' => '19 Gorgie Crescent, Musselburgh',
  'post_code' => 'EH275EX'})
member2.save

member3 = Member.new({
    'first_name' => 'Sheila',
    'last_name' => 'Jones',
    'date_of_birth' => '22/02/1980',
    'address' => '1 Moray Avenue, Edinburgh',
    'post_code' => 'EH35NP'})
member3.save

member4 = Member.new({
    'first_name' => 'Stuart',
    'last_name' => 'Ferguson',
    'date_of_birth' => '14/07/1999',
    'address' => '105 Embo Drive, Tranent',
    'post_code' => 'EH319PQ'})
member4.save

session1 = Session.new({
  'name' => 'Zumba',
  'type' => 'Cardio',
  'duration' => 40})
session1.save

session2 = Session.new({
  'name' => 'Kettlebells',
  'type' => 'Toning',
  'duration' => 30})
session2.save

session3 = Session.new({
  'name' => 'Box Fit',
  'type' => 'Cardio',
  'duration' => 35})
session3.save

session4 = Session.new({
  'name' => 'Pilates',
  'type' => 'Core',
  'duration' => 60})
session4.save

binding.pry
nil
