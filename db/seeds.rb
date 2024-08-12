require 'faker'

# User.create!(email:  "root@root.com", password: "123456", password_confirmation: "123456")

calc = CalcService.new

25.times do
  salary = Faker::Number.within(range: 500..6101.06)
  Proponent.create!(
    name: Faker::Name.name,
    document:  Faker::Number.number(digits: 11),
    born_in: Faker::Date.birthday(min_age: 18, max_age: 65),

    street: Faker::Address.street_address,
    number: Faker::Address.building_number,
    city: Faker::Address.city,
    state: Faker::Address.state,
    district: Faker::Address.city,
    cep: Faker::Address.zip_code,

    phone: Faker::PhoneNumber.cell_phone,
    phone2: Faker::PhoneNumber.cell_phone,
    salary: salary,
    discount: calc.get(salary)[:discounts]
    )
end