require "test_helper"

class ProponentTest < ActiveSupport::TestCase
  def setup
    @proponent = Proponent.new(name: "John Doe", document: "123456789", born_in: "1980-01-01",
                               street: "Street", district: "District", city: "City", state: "State",
                               cep: "12345-678", phone: "123456789", salary: 1000.0, discount: 100.0)
  end

  test "should be valid" do
    assert @proponent.valid?
  end

  test "name should be present" do
    @proponent.name = ""
    assert_not @proponent.valid?
  end
end