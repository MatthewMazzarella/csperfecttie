require 'test_helper'

class HomeonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homeone = homeones(:one)
  end

  test "should get index" do
    get homeones_url
    assert_response :success
  end

  test "should get new" do
    get new_homeone_url
    assert_response :success
  end

  test "should create homeone" do
    assert_difference('Homeone.count') do
      post homeones_url, params: { homeone: {  } }
    end

    assert_redirected_to homeone_url(Homeone.last)
  end

  test "should show homeone" do
    get homeone_url(@homeone)
    assert_response :success
  end

  test "should get edit" do
    get edit_homeone_url(@homeone)
    assert_response :success
  end

  test "should update homeone" do
    patch homeone_url(@homeone), params: { homeone: {  } }
    assert_redirected_to homeone_url(@homeone)
  end

  test "should destroy homeone" do
    assert_difference('Homeone.count', -1) do
      delete homeone_url(@homeone)
    end

    assert_redirected_to homeones_url
  end
end
