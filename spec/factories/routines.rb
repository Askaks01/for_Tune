FactoryBot.define do
  factory :routine do
    name { 'routine名' }
    description { '説明文' }
    category_id { 2 }
    timeframe_id { 2 }


    after(:build) do |routine|
      routine.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    association :user 
  end
end
