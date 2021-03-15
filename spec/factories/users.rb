FactoryBot.define do
  factory :user do
    nickname              {"テストちゃん"}
    email                 {Faker::Internet.free_email}
    password              {"123test"}
    password_confirmation {password}
    birth_date{"1995-10-29"}
  end
end
