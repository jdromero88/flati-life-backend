# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Cohort.destroy_all
User.destroy_all
TechSpecification.destroy_all
Project.destroy_all

pipedreams = Cohort.create(
  name: '|dreams|',
  started: '2019-10-28',
  graduation: '2020-02-14',
)
dcweb112119 = Cohort.create(
  name: 'dcweb112119',
  started: '2019-11-21',
  graduation: '2020-02-14',
)
dcweb011820 = Cohort.create(
  name: 'dcweb011820',
  started: '2020-01-18',
  graduation: '2020-03-19',
)

jose = User.create(
    first_name: 'Jose',
    last_name: 'Romero',
    username: 'jromero',
    password: 'jromero',
    email: 'jdromerov88@gmail.com',
    pronouns: 'He|Him',
    avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYXUQvMtuvVCkxP0XvcFQbzAhzgRnF8RyLskDmwm5NMF7AO3IVfQ&s',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: 'Ruby',
    course_name: 'Software Engineer',
    current_job: 'drink coffee',
    cohort_id: Cohort.first.id,
    before_flatiron: 'Working in a restaurant as sous chef',
  )
sara = User.create(
    first_name: 'Sara',
    last_name: 'Tarnvik',
    username: 'sara',
    password: 'sara',
    email: 'sara@gmail.com',
    pronouns: 'She|Her',
    avatar: 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: 'Ruby',
    course_name: 'Software Engineer',
    current_job: 'drink coffee',
    cohort_id: Cohort.first.id,
    before_flatiron: 'empty for now',
  )

ryan = User.create(
    first_name: 'Ryan',
    last_name: 'Smith',
    username: 'rsmith',
    password: 'rsmith',
    email: 'ryan@gmail.com',
    pronouns: 'He|Him',
    avatar: 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: 'Ruby',
    course_name: 'Software Engineer',
    current_job: 'drink coffee',
    cohort_id: Cohort.first.id,
    before_flatiron: 'Went to high school kind of...',
  )
  matt = User.create(
      first_name: 'Matt',
      last_name: 'Heavner',
      username: 'matt',
      password: 'matt',
      email: 'matt@gmail.com',
      pronouns: 'He|Him',
      avatar: 'https://nick-intl.mtvnimages.com/uri/mgid:file:docroot:nick.com:/nick-assets/shows/images/jimmy-neutron/characters/character_large_332x363_jimmy.jpg',
      bio: Faker::Lorem.paragraph(sentence_count: 3),
      fav_language: 'Ruby',
      course_name: 'Software Engineer',
      current_job: 'drink coffee',
      cohort_id: Cohort.first.id,
      before_flatiron: '',
    )
9.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    username: Faker::Name.unique.name.gsub(/[[:space:]]/, ''),
    password: 'password',
    email: Faker::Internet.unique.email,
    pronouns: '',
    avatar: 'https://kooledge.com/assets/default_medium_avatar-57d58da4fc778fbd688dcbc4cbc47e14ac79839a9801187e42a796cbd6569847.png',
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    fav_language: '',
    course_name: 'Software Engineer',
    current_job: '',
    cohort_id: Cohort.first.id,
    before_flatiron: '',
  )
end

ruby = TechSpecification.create(
  name: 'Ruby',
  description: 'Ruby is...
A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.',
website: 'https://www.ruby-lang.org/en/',
)

js = TechSpecification.create(
  name: 'JavaScript',
  description: 'JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, multi-paradigm programming language that conforms to the ECMAScript specification.',
website: 'https://developer.mozilla.org/en-US/docs/Web/JavaScript',
)

5.times do
  Project.create(
    name: Faker::Hacker.ingverb + Faker::Hacker.verb,
    description: Faker::Hacker.say_something_smart,
    image: Faker::LoremPixel.image,
    repository_url: Faker::Internet.url,
  )
end

user_project = UserProject.create(
  user_id: jose.id,
  project_id: Project.first.id
)

user_project_two = UserProject.create(
  user_id: User.last.id,
  project_id: Project.first.id
)

projec_tech = ProjectTech.create(
  project_id: Project.first.id,
  tech_specification_id: js.id
)

# byebug
# 0
# removes all whitespace, including unicode ones.
# .gsub(/[[:space:]]/, '')
