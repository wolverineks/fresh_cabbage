FactoryGirl.define do
  factory :comment do |f|
    f.body  { Faker::Lorem.sentence }
    f.user  { FactoryGirl.create(:user) }
    f.movie { FactoryGirl.create(:movie) }
  end
end
