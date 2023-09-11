require "test_helper"

class BooksControlleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get books_controlle_new_url
    assert_response :success
  end

  test "should get index" do
    get books_controlle_index_url
    assert_response :success
  end

  test "should get show" do
    get books_controlle_show_url
    assert_response :success
  end

  test "should get edit" do
    get books_controlle_edit_url
    assert_response :success
  end
end
