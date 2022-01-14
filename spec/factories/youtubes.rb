FactoryBot.define do
  factory :youtube do
    url                   { 'test' }
    title                 { Faker::Name.initials(number: 2) }
    info                  { 'test' }
    writer                { 'test' }
    composer              { 'test' }
    lyric                 { 'test' }

    association :artist
    
  end
end
