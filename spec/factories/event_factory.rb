FactoryGirl.define do

  factory :event do
    sequence(:title) { |n| "Some Event #{n}" }
    sequence(:slug) { |n| "some-event-#{n}" }
    venue_name  'Test Venue'
    address_1 '100 SW Main Street'
    city 'Portland'
    state 'OR'
    zip '97204'
    tradition 'Test Tradition'
    capacity 100
    introduction 'Test introduction text'
    description 'Test description text'
    # on_stage true
    # on_prod true
  end

end