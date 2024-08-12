require "test_helper"

class ProponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proponent = proponents(:one)
  end

  test "should get index" do
    get proponents_url
    assert_response :success
  end

  test "should get new" do
    get new_proponent_url
    assert_response :success
  end

  test "should create proponent" do
    assert_difference("Proponent.count") do
      post proponents_url, params: { proponent: { born_in: @proponent.born_in, cep: @proponent.cep, city: @proponent.city, district: @proponent.district, document: @proponent.document, name: @proponent.name, number: @proponent.number, phone: @proponent.phone, phone2: @proponent.phone2, salary: @proponent.salary, state: @proponent.state, street: @proponent.street } }
    end

    assert_redirected_to proponent_url(Proponent.last)
  end

  test "should show proponent" do
    get proponent_url(@proponent)
    assert_response :success
  end

  test "should get edit" do
    get edit_proponent_url(@proponent)
    assert_response :success
  end

  test "should update proponent" do
    patch proponent_url(@proponent), params: { proponent: { born_in: @proponent.born_in, cep: @proponent.cep, city: @proponent.city, district: @proponent.district, document: @proponent.document, name: @proponent.name, number: @proponent.number, phone: @proponent.phone, phone2: @proponent.phone2, salary: @proponent.salary, state: @proponent.state, street: @proponent.street } }
    assert_redirected_to proponent_url(@proponent)
  end

  test "should destroy proponent" do
    assert_difference("Proponent.count", -1) do
      delete proponent_url(@proponent)
    end

    assert_redirected_to proponents_url
  end
end
