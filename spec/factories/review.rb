FactoryGirl.define do
  factory :review do |f|
    f.title { Faker::Lorem.sentence }
    f.body  { Faker::Lorem.paragraph(3) }
    f.user  { FactoryGirl.create(:user) }
    f.movie { FactoryGirl.create(:movie) }
  end
end
