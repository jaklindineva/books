FactoryBot.define do
  factory :book do
    title { 'A Fake Title' }
    genre { 'Drama' }
    isbn {'958-3-16-158413-9'}
    publish_date { 10.years.ago }
  end
end