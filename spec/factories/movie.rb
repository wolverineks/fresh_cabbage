FactoryGirl.define do
  factory :movie do |f|
    f.title        { Faker::Book.title }
    f.synopsis     { Faker::Lorem.paragraph }
    f.runtime      { Faker::Number.number(3) }
    f.release_date { Faker::Time.between(DateTime.now - 10000, DateTime.now) }
    f.mpaa_rating  { ["G", "PG", "PG-13", "R", "NC-17"].sample }
  end
end
