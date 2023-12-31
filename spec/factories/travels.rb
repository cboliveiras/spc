FactoryBot.define do
  factory :travel do
    from_planet { 'Demeter' }
    to_planet { 'Aqua' }
    fuel_consumption { 15 }

    trait :invalid do
      from_planet { nil }
      to_planet { nil }
      fuel_consumption { nil }
    end

    association :ship, strategy: :build
  end
end
