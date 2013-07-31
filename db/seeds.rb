# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
u1 = User.create :name => "John Smith"
u2 = User.create :name => "Jane Brown"
u3 = User.create :name => "Fred Jones"

s = Sample.create(
  :name => "Example Sample",
  :value => 123,
  :enabled => TRUE,
  :description => "This is so amazing and also totally generic.",
  :the_date => Date.new,
  :the_time => Time.now,
  :the_datetime => DateTime.new,
  :user => u1
)

w1 = Widget.create :name => "Gizmo", :sample => s
w2 = Widget.create :name => "Thingy", :sample => s
w3 = Widget.create :name => "Whatsit", :sample => s

c1 = Company.create :name => "Acme"
c2 = Company.create :name => "Apex"
c3 = Company.create :name => "Pinnacle"

c1.samples << s
c2.samples << s
c3.samples << s
