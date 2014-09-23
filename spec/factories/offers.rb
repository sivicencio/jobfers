FactoryGirl.define do
  factory :offer do
    title 'An offer'

    factory :offer_with_company do
      company

      factory :offer_with_details do
        mode :full_time
        salary 1000.to_f
        description 'Some description'
      end
    end
  end

  factory :invalid_offer, class: Offer do
  end
end