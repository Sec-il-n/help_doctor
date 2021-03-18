FactoryBot.define do
  factory :address do
    zip_code { 1 }
    prefecture_code { 1 }
    address_row_1 { "MyString" }
    address_row_2 { "MyString" }
    phone_number { 1 }
  end
end
