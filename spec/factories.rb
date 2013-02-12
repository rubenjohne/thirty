Factory.define :user do |user|
  user.username               "Ruben Epong"
  user.email                  "ruben@tadashishoji.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.define :story do |story|
  story.participant_number      1
  story.image_filename          "test.jpg"
  story.about_me                "blah blah. BLACH @*&^$!!"
  story.anecdote                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et velit metus, ac dictum tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  story.name                    "Ruben Epong"
  story.company                 "Programmer"
  story.email_address           "ruben@tadashishoji.com"
  story.mailing_address         "3016 E 44th st. Vernon, CA 90058"
  story.approved                true                   
  story.featured                false
end   