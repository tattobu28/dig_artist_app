FactoryBot.define do
  factory :artist do
    artist_id             {Faker::Name.initials(number: 2)}
    name                  {Faker::Name.initials(number: 2)}
    member                {'test'}
    info                  {'test'}
    city_id               { Faker::Number.between(from: 1, to: 47) }
    genre_id              { Faker::Number.between(from: 2, to: 14) }
    email                 {Faker::Internet.free_email}
    website               {'test'}
    twitter               {'@test'}
    instagram             {'test'}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}

    after(:build) do |artist|
      artist.image.attach(io: File.open('public/images/bandsample.jpg'), filename: 'bandsample.jpg')
    end
  end
end