# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skills = [
  { name: 'Ruby', icon: 'ruby.png' },
  { name: 'Ruby on Rails', icon: 'rails.png' },
  { name: 'HTML', icon: 'html5.gif' },
  { name: 'CSS', icon: 'css.png' },
  { name: 'Bootstrap', icon: 'bootstrap.png' },
  { name: 'JavaScript', icon: 'javascript.png' },
  { name: 'JQuery', icon: 'jquery.png' },
  { name: 'AngularJS', icon: 'angular.png' },
  { name: 'NodeJS', icon: 'nodejs.png' },
  { name: 'ExpressJS', icon: 'expressjs.png' },
  { name: 'PostgreSQL', icon: 'postgresql.png' },
  { name: 'MongoDB', icon: 'mongodb.png' },
  { name: 'Github', icon: 'github.png' },
  { name: 'AWS', icon: 'aws.png' },
  { name: 'TDD', icon: '' },
  { name: 'CI', icon: '' }
]

skills.each do |skill|
  Skill.create(skill) if Skill.where(name: skill[:name]).count < 1
  puts skill[:name] + ' DONE'
end
