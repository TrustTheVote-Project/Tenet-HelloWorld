# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

st = Csf::State.find_by!(code: "CA")

name = "Farallon State Board of Elections"

# delete existing account
ac = Csf::Account.find_by(name: name)
ac.destroy if ac

# create account w/ admin and users
ac = Csf::Account.create!(state: st, name: name)
Csf::User.create(account: ac, login: "farallon-sbe", first_name: "Farallon", last_name: "Admin", email: "admin@sbe.farallon.gov", admin: true, password: '0000', title: 'Farallon Admin', phone: '(000) 000-0000')
Csf::User.create(account: ac, login: "kwitwicki", first_name: "Farallon", last_name: "Kwitwicki", email: "kwitwicki@sbe.farallon.gov", admin: false, password: '0000', title: 'Farallon User', phone: '(000) 000-0000')
Csf::User.create(account: ac, login: "preed", first_name: "Farallon", last_name: "Preed", email: "preed@sbe.farallon.gov", admin: false, password: '0000', title: 'Farallon User', phone: '(000) 000-0000')
