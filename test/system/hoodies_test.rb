require "application_system_test_case"

class HoodiesTest < ApplicationSystemTestCase
  setup do
    @hoody = hoodies(:one)
  end

  test "visiting the index" do
    visit hoodies_url
    assert_selector "h1", text: "Hoodies"
  end

  test "creating a Hoody" do
    visit hoodies_url
    click_on "New Hoody"

    fill_in "Brand", with: @hoody.brand
    fill_in "Description", with: @hoody.description
    fill_in "Price", with: @hoody.price
    fill_in "Size", with: @hoody.size
    fill_in "Title", with: @hoody.title
    click_on "Create Hoody"

    assert_text "Hoody was successfully created"
    click_on "Back"
  end

  test "updating a Hoody" do
    visit hoodies_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @hoody.brand
    fill_in "Description", with: @hoody.description
    fill_in "Price", with: @hoody.price
    fill_in "Size", with: @hoody.size
    fill_in "Title", with: @hoody.title
    click_on "Update Hoody"

    assert_text "Hoody was successfully updated"
    click_on "Back"
  end

  test "destroying a Hoody" do
    visit hoodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hoody was successfully destroyed"
  end
end
