FactoryGirl.define do
  factory :comment do |f|
    f.body   { Faker::Lorem.sentence }
    f.user   { FactoryGirl.create(:user) }
    f.review { FactoryGirl.create(:review) }
  end
end
