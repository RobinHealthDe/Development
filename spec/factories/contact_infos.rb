FactoryGirl.define do
  factory :contact_info do
    factory :tsuruhime_contact do
      first_name 'Tsuruhime'
      last_name  'Ōhōri'
      email      'tsuruhime@example.com'
      phone      '0081891231234'
    end

    factory :sen_contact do
      first_name 'Sen'
      last_name  'Ikeda'
      email      'sen@example.com'
      phone      '0081521231234'
    end

    factory :ginchiyo_contact do
      first_name 'Ginchiyo'
      last_name  'Tachibana'
      email      'ginchiyo@example.com'
      phone      '0081921231234'
    end
  end
end
