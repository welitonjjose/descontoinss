require "application_system_test_case"

class ProponentsTest < ApplicationSystemTestCase
  setup do
    @proponent = proponents(:one)
  end

  test "visiting the index" do
    visit proponents_url
    assert_selector "h1", text: "Proponents"
  end

  test "should create proponent" do
    visit proponents_url
    click_on "New proponent"

    fill_in "Born in", with: @proponent.born_in
    fill_in "Cep", with: @proponent.cep
    fill_in "City", with: @proponent.city
    fill_in "District", with: @proponent.district
    fill_in "Document", with: @proponent.document
    fill_in "Name", with: @proponent.name
    fill_in "Number", with: @proponent.number
    fill_in "Phone", with: @proponent.phone
    fill_in "Phone2", with: @proponent.phone2
    fill_in "Salary", with: @proponent.salary
    fill_in "State", with: @proponent.state
    fill_in "Street", with: @proponent.street
    click_on "Create Proponent"

    assert_text "Proponent was successfully created"
    click_on "Back"
  end

  test "should update Proponent" do
    visit proponent_url(@proponent)
    click_on "Edit this proponent", match: :first

    fill_in "Born in", with: @proponent.born_in
    fill_in "Cep", with: @proponent.cep
    fill_in "City", with: @proponent.city
    fill_in "District", with: @proponent.district
    fill_in "Document", with: @proponent.document
    fill_in "Name", with: @proponent.name
    fill_in "Number", with: @proponent.number
    fill_in "Phone", with: @proponent.phone
    fill_in "Phone2", with: @proponent.phone2
    fill_in "Salary", with: @proponent.salary
    fill_in "State", with: @proponent.state
    fill_in "Street", with: @proponent.street
    click_on "Update Proponent"

    assert_text "Proponent was successfully updated"
    click_on "Back"
  end

  test "should destroy Proponent" do
    visit proponent_url(@proponent)
    click_on "Destroy this proponent", match: :first

    assert_text "Proponent was successfully destroyed"
  end
end
