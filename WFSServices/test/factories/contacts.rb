FactoryBot.define do
    factory :contact do
      first_name "John" 
      last_name "Smith"
      work_number "4121234568"
      phone_number "4121234567"
      street_1 "104 Beta Dr"
      city_1 "Pittsburgh"
      zipcode_1 "15238"
      role "Doctor"
      #created_by "Test Admin"
      #updated_by "Test Admin"
    end
end