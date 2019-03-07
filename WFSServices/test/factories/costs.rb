FactoryBot.define do
    factory :cost do
    	unit_cost 15
    	unit_rate 16
    	avg_los 10
    	rev_los 20
    	frequency "3 time a week"
    	association :service_type
    end
end