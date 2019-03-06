FactoryBot.define do
    factory :service do
      name "Bee Kind Classroom"
      description "We work directly with children ages 3-8."
      philosophy "The Bee Kind Program teaches kindness."
      entrance_criteria "Any educational setting or program that works with children ages 3 to 8 years."
      exclusion_criteria "None"
      exit_criteria "Completion of the program series of 4 visits to the classroom/program."
      level_of_care "Risk Reduction"
      average_length_of_stay "4 weeks"
      referral_process "We contact educational settings to schedule the program."
      matching_elements "Trained volunteers can be used."
      created_by "Test"
      association :category
      association :contact
      association :location
      association :service_type
    end
end