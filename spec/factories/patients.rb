FactoryGirl.define do
  factory :patient do
    factory :tsuruhime_patient do
      association :contact_info, factory: :tsuruhime_contact
    end

    factory :sen_patient do
      association :contact_info, factory: :sen_contact
    end

    factory :ginchiyo_patient do
      association :contact_info, factory: :ginchiyo_contact
    end
  end
end

