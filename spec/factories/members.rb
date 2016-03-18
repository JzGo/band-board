FactoryGirl.define do
  factory :member do
    sequence(:memberid) { |n| "weedilyweedily#{n}" }
    sequence(:email) { |n| "weedilyman{n}@example.com" }
    sequence(:password) { |n| "passwords#{n}"}
  end

end
