require 'test_helper'

class ProponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proponent = proponents(:one)
    @new_proponent = { name: "New Proponent", document: "987654321", born_in: "1990-01-01",
                       street: "New Street", district: "New District", city: "New City", state: "New State",
                       cep: "98765-432", phone: "987654321", salary: 2000.0, discount: 200.0 }
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
    assert_difference('Proponent.count') do
      post proponents_url, params: { proponent: @new_proponent }
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
    patch proponent_url(@proponent), params: { proponent: { name: "Updated Name" } }
    assert_redirected_to proponent_url(@proponent)
    @proponent.reload
    assert_equal "Updated Name", @proponent.name
  end

  test "should destroy proponent" do
    assert_difference('Proponent.count', -1) do
      delete proponent_url(@proponent)
    end

    assert_redirected_to proponents_url
  end
end