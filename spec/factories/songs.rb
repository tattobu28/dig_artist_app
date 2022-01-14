FactoryBot.define do
  factory :song do
    title                 { Faker::Name.initials(number: 2) }
    info                  { 'test' }
    writer                { 'test' }
    composer              { 'test' }
    lyric                 { 'test' }
    file                  {Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/songs/SS.m4a'))}


    association :artist

    after(:build) do |song|
      song.image.attach(io: File.open('public/images/bandsample.jpg'), filename: 'bandsample.jpg')
    end
  end
end
