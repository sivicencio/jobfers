FactoryGirl.define do
  factory :offer do
    title 'An offer'
  end

  factory :invalid_offer, class: Offer do
  end
end