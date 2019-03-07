FactoryBot.define do
    factory :service_type do
      name "Group Therapy Level 1"
      staff "Therapist"
      created_by "Test Admin"
      updated_by "Test Admin"
      association :service
    end
end