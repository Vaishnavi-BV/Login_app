require "test_helper"

class AddBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get add_books_index_url
    assert_response :success
  end

  test "should get show" do
    get add_books_show_url
    assert_response :success
  end

  test "should get new" do
    get add_books_new_url
    assert_response :success
  end

  test "should get delete" do
    get add_books_delete_url
    assert_response :success
  end
end
