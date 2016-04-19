FactoryGirl.define do
  factory :rating do |f|
    f.user  { FactoryGirl.create(:user) }
    f.movie { FactoryGirl.create(:movie) }
    f.value { [0, 1, 2, 3, 4].sample + [0, 0.5, 1].sample }
  end
end
