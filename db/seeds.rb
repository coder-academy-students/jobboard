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
  if Skill.where(name: skill[:name]).count < 1
    Skill.create(skill)
    puts skill[:name] + ' DONE'
  end
end

u1 = User.new(email: 'pete@coderfactory.com', password: '12345678')
if u1.save
  u1.add_role :admin
  puts 'u1 saved and role admin added'
end

job_types = [
  { name: 'Part time' },
  { name: 'Full time' },
  { name: 'Contract' }
]

job_types.each do |job_type|
  if JobType.where(name: job_type[:name]).count < 1
    JobType.create(job_type)
    puts job_type[:name] + ' DONE'
  end
end
