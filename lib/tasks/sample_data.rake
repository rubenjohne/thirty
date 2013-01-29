require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke 

    # create the user
    User.create!(:username => "Example User",
      :email => "ruben@tadashishoji.com",
      :password => "ruben123")    
    
    100.times do |n|
      participant_number = n + 1
      image_filename = "image.jpg"
      about_me = Faker::Lorem.sentence
      anecdote = Faker::Lorem.paragraph
      name = Faker::Name.name
      company = Faker::Company.bs
      email_address = Faker::Internet.email
      mailing_address = Faker::Address.street_address + " " + Faker::Address.city + ", " + Faker::Address.state + " " + Faker::Address.zip_code
      approved = true 
      
      Story.create!(
        :participant_number => participant_number,
        :image_filename => image_filename,
        :about_me => about_me,
        :anecdote => anecdote,
        :name => name,
        :company => company,
        :email_address => email_address,
        :mailing_address => mailing_address,
        :approved => approved
      )
    end  
  end
end