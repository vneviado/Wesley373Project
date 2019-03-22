FactoryBot.define do
  factory :service_location do
    association :service
    association :location
  end
end
