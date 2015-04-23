FactoryGirl.define do
  factory :user do
    password 'password'

    factory :admin do
      email 'admin@example.com'
    end

    factory :nobunaga do
      email 'nobunaga@example.com'
    end

    factory :hideyoshi do
      email 'hideyoshi@example.com'
    end
  end
end
