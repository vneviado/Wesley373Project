FactoryBot.define do
  factory :service_contact do
    association :service
    association :contact
  end
end
