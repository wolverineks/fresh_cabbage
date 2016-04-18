FactoryGirl.define do
  factory :user do |f|
    f.firstname             { Faker::Name.first_name }
    f.lastname              { Faker::Name.last_name }
    f.email                 { Faker::Internet.email }
    f.password              "foobar"
    f.password_confirmation "foobar"

    factory :critic do
      role "critic"
    end

    factory :admin do
      role "admin"
    end

  end
end
