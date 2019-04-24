FactoryBot.define do
  factory :user do
    role "admin"
    username "Peppa the Pig"
    group_string "IT"
    password "hello123"
    password_confirmation "hello123"
    email "sad@peppa.com"
  end
end
