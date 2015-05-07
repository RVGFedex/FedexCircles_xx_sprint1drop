# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c0 = Circle.create({name: "Empty Circle", group_code: "Empty", points: 0})
c1 = Circle.create({name: "Aviva Staff", group_code: "Aviva", points: 0})

p1 = Product.create({name:"Motor", spweight:50, rpweight:1.25})
p2 = Product.create({name:"Home", spweight:50, rpweight:1})
p3 = Product.create({name:"Health", spweight:100, rpweight:0.75})
p4 = Product.create({name:"Pension", spweight:250, rpweight:0.25})
p5 = Product.create({name:"Life Assurance", spweight:1, rpweight:0.5})
p6 = Product.create({name:"Travel", spweight:10, rpweight:1})

r1 = Role.create({name: "BackOfficeMgr", description: "Can perform any CRUD operation on any resource"})
r2 = Role.create({name: "BackOfficeUser", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Customer", description: "Can read items"})
 
mgr1 = User.create({name: "John Murphy", email: "john@aviva.ie", password: "password", password_confirmation: "password", role_id: r1.id, circle_id: c1.id})
mgr2 = User.create({name: "Kim Deal", email: "kim@aviva.ie", password: "password", password_confirmation: "password", role_id: r2.id, circle_id: c1.id})

cust1 = User.create({name: "Gary Twigg", email: "gary@example.ie", password: "password", password_confirmation: "password", role_id: r3.id})
cust2 = User.create({name: "Dessie Baker", email: "dessie@example.ie", password: "password", password_confirmation: "password", role_id: r3.id})
cust3 = User.create({name: "Graham Barrett", email: "graham@example.ie", password: "password", password_confirmation: "password", role_id: r3.id})

