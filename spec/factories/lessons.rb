FactoryBot.define do
  factory :lesson do
    # title { "The Title" }
    sequence(:title) { |n| "The Title#{n}" }
    description { "All of the description." }
    # slug { "the-title" }
    sequence(:slug) { |n| "the-title#{n}" }
  end
end
