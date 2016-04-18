FactoryGirl.define do
  factory :categry do |f|
    f.title { Faker::Commerce.department }
  end
end
