FactoryBot.define do 
  factory :person do 
      title  {"Eng"}
      first  {"Vicente"}
      last   {"Simão"}
      gender {"Male"}
      email  {"vicenteviii@gmail.com"}
      after(:build) do |person|
        person.photo.attach(io: File.open(Rails.root.join('spec', 'factories', 'images', 'pacaça.jpeg')), filename: 'pacaça.jpeg', content_type: 'image/jpeg')
      end
  end
end