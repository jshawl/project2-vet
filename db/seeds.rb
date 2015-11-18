# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  ralph = Vet.create(name: "Ralph", school: "Penn")
  marty = Vet.create(name: "Marty", school: "UT")
  earl = Vet.create(name: "Earl", school: "Penn")
  ted = Vet.create(name: "Ted", school: "Auburn")

  pooh = Pet.create(name: "Pooh", breed: "Yellow Bear")
  pongo = Pet.create(name: "Pongo", breed: "Dalmatian")
  perdie = Pet.create(name: "Perdie", breed: "Dalmatian")

  appt9 = Appointment.create(vet: ted, pet: flyer, appointmenttime: "Monday 9a")
  appt12 = Appointment.create(vet: ted, pet: pongo, appointmenttime: "Monday 12p")
  appt3 = Appointment.create(vet: marty, pet: perdie, appointmenttime: "Monday 3p")
