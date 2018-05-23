FactoryBot.define do
  factory :note do
    title { Faker::Lorem.word }
    content { Faker::Lorem.word }
    group { Faker::Lorem.word }
    alias_name { Faker::Lorem.word }
    user_id nil
    views 0
    likes 0
  end
end
