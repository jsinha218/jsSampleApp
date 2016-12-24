require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    ##this runs before all tests runs ensuring the passing 
    @base_title = "Ruby on Rails Sample App"
  end  

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title","Home |#{@base_title}"
  end  

  test "should get home" do
    get root_path
    assert_response :success
    ##access the string variable
    assert_select "title","Home |#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title","Help |#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    ##the below line checks the presence of a particular tag on page
    assert_select "title","About |#{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    ##the below line checks the presence of a particular tag on page
    assert_select "title","Contact |#{@base_title}"
  end

end
