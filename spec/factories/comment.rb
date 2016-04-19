FactoryGirl.define do
  factory :comment do |f|
    f.body   { Faker::Lorem.sentence }
    user
    review
  end
end
