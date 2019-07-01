FactoryBot.define do
  factory :item do
    sequence(:name)
    sequence(:description)
    sequence(:price)
    #sequence(:) picture
    sequence(:quantity)
    sequence(:) merchant name it belongs to
  end
end
