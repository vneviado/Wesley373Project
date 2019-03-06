FactoryBot.define do
    factory :contact do
      name "John Smith"
      work_numer "(412)123-4568"
      phone_number "(412)123-4567"
      street_1 "104 Beta Dr"
      city_1 "Pittsburgh"
      zipcode_1 "15238"
      created_by "Test Admin"
    end
end