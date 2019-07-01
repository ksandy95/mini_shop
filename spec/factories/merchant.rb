FactoryBot.define do
  factory :merchant do
    sequence(:name) {|n| "Merchant#{n}"}
    sequence(:address) {|n| "#{n}#{n+1}#{n+2} Street"}
    sequence(:city) {|n| "City #{n}"}
    sequence(:state) {|n| "State #{n}"}
    sequence(:zip) {|n| "#{n}#{n}#{n}#{n}#{n}"}
  end
end
