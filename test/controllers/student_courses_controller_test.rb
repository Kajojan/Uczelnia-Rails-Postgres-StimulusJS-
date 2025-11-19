require "test_helper"

class StudentCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_courses_index_url
    assert_response :success
  end

  test "should get show" do
    get student_courses_show_url
    assert_response :success
  end

  test "should get new" do
    get student_courses_new_url
    assert_response :success
  end

  test "should get create" do
    get student_courses_create_url
    assert_response :success
  end

  test "should get edit" do
    get student_courses_edit_url
    assert_response :success
  end

  test "should get update" do
    get student_courses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get student_courses_destroy_url
    assert_response :success
  end
end
