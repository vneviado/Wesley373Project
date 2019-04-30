FactoryBot.define do
    factory :location do
      name "Beta"
      phone_number "4121234567"
      street "104 Beta Dr"
      city "Pittsburgh"
      zipcode "15238"
      map_link 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3033.9314406043623!2d-79.86592278507999!3d40.498899079355674!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8834ecdb457d3ab5%3A0xc6c118bc0f6eac6f!2s401+Beta+Dr%2C+Pittsburgh%2C+PA+15238!5e0!3m2!1sen!2sus!4v1556292296750!5m2!1sen!2sus'
      created_by "Test Admin"
      updated_by "Test Admin"
    end
end
