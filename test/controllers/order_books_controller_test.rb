require "test_helper"

class OrderBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_books_index_url
    assert_response :success
  end
end
