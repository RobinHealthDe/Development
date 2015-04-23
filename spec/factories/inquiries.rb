FactoryGirl.define do
  factory :inquiry do
    factory :tsuruhime_inquiry do
      association :patient, factory: :tsuruhime_patient
    end

    factory :sen_inquiry do
      association :patient, factory: :sen_patient
    end

    factory :ginchiyo_inquiry do
      association :patient, factory: :ginchiyo_patient
    end
  end
end


