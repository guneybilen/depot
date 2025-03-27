require "test_helper"

# FYI: The following does not visit Website root path on the browser.
# It is about fixture data that is encapsulated with the application layout.
class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select "nav a", minimum: 4
    assert_select "main", 1
    assert_select "main ul li", 3
    assert_select "nav ul li", 6
    assert_select "main ul", 1
    #FYI: The 4th img is the logo on top of the page that comes from the layout.
    assert_select "img", 4
    assert_select "h2", "The Pragmatic Programmer"
    assert_select "div", /\$[,\d]+\.\d\d/
    #puts @response.body
  end
end
