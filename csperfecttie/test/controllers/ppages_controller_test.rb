require 'test_helper'

class PpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ppage = ppages(:one)
  end

  test "should get index" do
    get ppages_url
    assert_response :success
  end

  test "should get new" do
    get new_ppage_url
    assert_response :success
  end

  test "should create ppage" do
    assert_difference('Ppage.count') do
      post ppages_url, params: { ppage: { address: @ppage.address, anniversary: @ppage.anniversary, birthday: @ppage.birthday, city: @ppage.city, cost: @ppage.cost, email: @ppage.email, hatsize: @ppage.hatsize, methodofcom: @ppage.methodofcom, name: @ppage.name, orderdetails: @ppage.orderdetails, ordernumber: @ppage.ordernumber, phone: @ppage.phone, preferedcolor: @ppage.preferedcolor, shirtsize: @ppage.shirtsize, shoesize: @ppage.shoesize, state: @ppage.state, style: @ppage.style, suitsize: @ppage.suitsize, zipcode: @ppage.zipcode } }
    end

    assert_redirected_to ppage_url(Ppage.last)
  end

  test "should show ppage" do
    get ppage_url(@ppage)
    assert_response :success
  end

  test "should get edit" do
    get edit_ppage_url(@ppage)
    assert_response :success
  end

  test "should update ppage" do
    patch ppage_url(@ppage), params: { ppage: { address: @ppage.address, anniversary: @ppage.anniversary, birthday: @ppage.birthday, city: @ppage.city, cost: @ppage.cost, email: @ppage.email, hatsize: @ppage.hatsize, methodofcom: @ppage.methodofcom, name: @ppage.name, orderdetails: @ppage.orderdetails, ordernumber: @ppage.ordernumber, phone: @ppage.phone, preferedcolor: @ppage.preferedcolor, shirtsize: @ppage.shirtsize, shoesize: @ppage.shoesize, state: @ppage.state, style: @ppage.style, suitsize: @ppage.suitsize, zipcode: @ppage.zipcode } }
    assert_redirected_to ppage_url(@ppage)
  end

  test "should destroy ppage" do
    assert_difference('Ppage.count', -1) do
      delete ppage_url(@ppage)
    end

    assert_redirected_to ppages_url
  end
end
