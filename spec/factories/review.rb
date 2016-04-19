FactoryGirl.define do
  factory :review do |f|
    # f.title { Faker::Lorem.sentence }
    f.body  { Faker::Lorem.paragraph(5) }
    association :reviewer, factory: :user
    movie
  end
end
