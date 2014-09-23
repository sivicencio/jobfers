FactoryGirl.define do
  factory :offer do
    title 'An offer'

    factory :offer_with_company do
      company
    end
  end

  factory :invalid_offer, class: Offer do
  end
end