FactoryBot.define do
  factory :comment do
    content "Staff subject to change."
    date_created 1.day.ago.to_date
  end
end
