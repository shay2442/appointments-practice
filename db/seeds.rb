# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

 10.times do |i|
     doctor = Doctor.create(name:"Dr.#{i}") 
     10.times do |x| 
        patient = Patient.create(name:"Patient#{x}", doctor_id:doctor.id)
        5.times do |y| 
            Appointment.create(doctor_id:doctor.id, patient_id:patient.id, start_time:2.days
            .from_now, duration_in_minutes:60)     
        end 
        5.times do |y| 
            Appointment.create(doctor_id:doctor.id, patient_id:patient.id, start_time:2.days
            .ago, duration_in_minutes:60)
        end
    end
end

shay = Doctor.create(name:"Shay")