FactoryBot.define do
  factory :review do
    visit_date                     {"2020-07-04"}
    flavor                         {"テストちゃん"}
    companion_id                   {2}
    price                          {2400}
    message                        {"テストちゃんによるメッセージ"}

    association :user

    after(:build) do |review|
      review.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end