require 'test_helper'

class LandingPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get landing_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get landing_pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get landing_pages_contact_url
    assert_response :success
  end

  test "should get legal" do
    get landing_pages_legal_url
    assert_response :success
  end

  test "should get privacy" do
    get landing_pages_privacy_url
    assert_response :success
  end

end
