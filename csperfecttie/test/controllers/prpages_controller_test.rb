require 'test_helper'

class PrpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prpage = prpages(:one)
  end

  test "should get index" do
    get prpages_url
    assert_response :success
  end

  test "should get new" do
    get new_prpage_url
    assert_response :success
  end

  test "should create prpage" do
    assert_difference('Prpage.count') do
      post prpages_url, params: { prpage: { address: @prpage.address, anniversary: @prpage.anniversary, birthday: @prpage.birthday, city: @prpage.city, cost: @prpage.cost, email: @prpage.email, hatsize: @prpage.hatsize, methodofcom: @prpage.methodofcom, name: @prpage.name, orderdetails: @prpage.orderdetails, ordernumber: @prpage.ordernumber, phone: @prpage.phone, preferedcolor: @prpage.preferedcolor, shirtsize: @prpage.shirtsize, shoesize: @prpage.shoesize, state: @prpage.state, style: @prpage.style, suitsize: @prpage.suitsize, zipcode: @prpage.zipcode } }
    end

    assert_redirected_to prpage_url(Prpage.last)
  end

  test "should show prpage" do
    get prpage_url(@prpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_prpage_url(@prpage)
    assert_response :success
  end

  test "should update prpage" do
    patch prpage_url(@prpage), params: { prpage: { address: @prpage.address, anniversary: @prpage.anniversary, birthday: @prpage.birthday, city: @prpage.city, cost: @prpage.cost, email: @prpage.email, hatsize: @prpage.hatsize, methodofcom: @prpage.methodofcom, name: @prpage.name, orderdetails: @prpage.orderdetails, ordernumber: @prpage.ordernumber, phone: @prpage.phone, preferedcolor: @prpage.preferedcolor, shirtsize: @prpage.shirtsize, shoesize: @prpage.shoesize, state: @prpage.state, style: @prpage.style, suitsize: @prpage.suitsize, zipcode: @prpage.zipcode } }
    assert_redirected_to prpage_url(@prpage)
  end

  test "should destroy prpage" do
    assert_difference('Prpage.count', -1) do
      delete prpage_url(@prpage)
    end

    assert_redirected_to prpages_url
  end
end
