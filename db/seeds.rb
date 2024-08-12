require 'faker'

# User.create!(email:  "root@root.com", password: "123456", password_confirmation: "123456")

25.times do
  Proponent.create!(
    name: Faker::Name.name,
    document:  Faker::Number.number(digits: 11),

    street: Faker::Address.street_address,
    number: Faker::Address.building_number,
    city: Faker::Address.city,
    state: Faker::Address.state,
    district: Faker::Address.city,
    cep: Faker::Address.zip_code,

    phone: Faker::PhoneNumber.cell_phone,
    phone2: Faker::PhoneNumber.cell_phone,
    salary: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    )
end