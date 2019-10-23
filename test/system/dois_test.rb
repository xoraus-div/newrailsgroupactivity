require "application_system_test_case"

class DoisTest < ApplicationSystemTestCase
  setup do
    @doi = dois(:one)
  end

  test "visiting the index" do
    visit dois_url
    assert_selector "h1", text: "Dois"
  end

  test "creating a Doi" do
    visit dois_url
    click_on "New Doi"

    fill_in "Animal", with: @doi.animal_id
    fill_in "Disease", with: @doi.disease_id
    fill_in "Doidate", with: @doi.doidate
    click_on "Create Doi"

    assert_text "Doi was successfully created"
    click_on "Back"
  end

  test "updating a Doi" do
    visit dois_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @doi.animal_id
    fill_in "Disease", with: @doi.disease_id
    fill_in "Doidate", with: @doi.doidate
    click_on "Update Doi"

    assert_text "Doi was successfully updated"
    click_on "Back"
  end

  test "destroying a Doi" do
    visit dois_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doi was successfully destroyed"
  end
end
