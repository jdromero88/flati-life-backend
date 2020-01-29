# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require faker

const jose =   User.create(
    first_name: 'Jose',
    last_name: 'Romero',
    username: 'jromero',
    password: 'jromero',
    email: 'jdromerov88@gmail.com',
    pronouns: 'He|Him',
    avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYXUQvMtuvVCkxP0XvcFQbzAhzgRnF8RyLskDmwm5NMF7AO3IVfQ&s',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: 'JS',
    course_name: 'Software Engineer',
    current_job: 'drink coffee',
    cohort_id: 1,
    before_flatiron: 'Working in a restaurant as sous chef'


  )
10.times do
  User.create(
    first_name: Faker::Name.first_name
    last_name:  Faker::Name.last_name
    username: Faker::Name.unique.name
    password: 'password',
    email: Faker::Internet.unique.email,
    pronouns: '',
    avatar: 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: '',
    course_name: 'Software Engineer',
    current_job: '',
    cohort_id: 1,
    before_flatiron: ''
  )
end
