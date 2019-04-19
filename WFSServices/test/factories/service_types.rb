FactoryBot.define do
    factory :service_type do
      name "Group Therapy Level 1"
      staff "Therapist"
      unit_cost 15
    	unit_rate 16
    	avg_los 10
    	rev_los 20
    	frequency "3 time a week"
      created_by "Test Admin"
      updated_by "Test Admin"
      association :service
    end
end