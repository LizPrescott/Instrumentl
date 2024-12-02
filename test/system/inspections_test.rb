require "application_system_test_case"

class InspectionsTest < ApplicationSystemTestCase
  setup do
    @inspection = inspections(:one)
  end

  test "visiting the index" do
    visit inspections_url
    assert_selector "h1", text: "Inspections"
  end

  test "should create inspection" do
    visit inspections_url
    click_on "New inspection"

    fill_in "Description", with: @inspection.description
    fill_in "Inspection date", with: @inspection.inspection_date
    fill_in "Inspection score", with: @inspection.inspection_score
    fill_in "Inspection type", with: @inspection.inspection_type
    fill_in "Restaurant", with: @inspection.restaurant_id
    fill_in "Risk category", with: @inspection.risk_category
    fill_in "Violation date", with: @inspection.violation_date
    fill_in "Violation type", with: @inspection.violation_type
    click_on "Create Inspection"

    assert_text "Inspection was successfully created"
    click_on "Back"
  end

  test "should update Inspection" do
    visit inspection_url(@inspection)
    click_on "Edit this inspection", match: :first

    fill_in "Description", with: @inspection.description
    fill_in "Inspection date", with: @inspection.inspection_date
    fill_in "Inspection score", with: @inspection.inspection_score
    fill_in "Inspection type", with: @inspection.inspection_type
    fill_in "Restaurant", with: @inspection.restaurant_id
    fill_in "Risk category", with: @inspection.risk_category
    fill_in "Violation date", with: @inspection.violation_date
    fill_in "Violation type", with: @inspection.violation_type
    click_on "Update Inspection"

    assert_text "Inspection was successfully updated"
    click_on "Back"
  end

  test "should destroy Inspection" do
    visit inspection_url(@inspection)
    click_on "Destroy this inspection", match: :first

    assert_text "Inspection was successfully destroyed"
  end
end
