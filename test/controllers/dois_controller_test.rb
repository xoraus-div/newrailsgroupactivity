require 'test_helper'

class DoisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doi = dois(:one)
  end

  test "should get index" do
    get dois_url
    assert_response :success
  end

  test "should get new" do
    get new_doi_url
    assert_response :success
  end

  test "should create doi" do
    assert_difference('Doi.count') do
      post dois_url, params: { doi: { animal_id: @doi.animal_id, disease_id: @doi.disease_id, doidate: @doi.doidate } }
    end

    assert_redirected_to doi_url(Doi.last)
  end

  test "should show doi" do
    get doi_url(@doi)
    assert_response :success
  end

  test "should get edit" do
    get edit_doi_url(@doi)
    assert_response :success
  end

  test "should update doi" do
    patch doi_url(@doi), params: { doi: { animal_id: @doi.animal_id, disease_id: @doi.disease_id, doidate: @doi.doidate } }
    assert_redirected_to doi_url(@doi)
  end

  test "should destroy doi" do
    assert_difference('Doi.count', -1) do
      delete doi_url(@doi)
    end

    assert_redirected_to dois_url
  end
end
