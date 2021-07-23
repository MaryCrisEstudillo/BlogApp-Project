require "test_helper"

class WatercolorBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watercolor_blog = watercolor_blogs(:one)
  end

  test "should get index" do
    get watercolor_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_watercolor_blog_url
    assert_response :success
  end

  test "should create watercolor_blog" do
    assert_difference('WatercolorBlog.count') do
      post watercolor_blogs_url, params: { watercolor_blog: { created: @watercolor_blog.created, description: @watercolor_blog.description, title: @watercolor_blog.title } }
    end

    assert_redirected_to watercolor_blog_url(WatercolorBlog.last)
  end

  test "should show watercolor_blog" do
    get watercolor_blog_url(@watercolor_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_watercolor_blog_url(@watercolor_blog)
    assert_response :success
  end

  test "should update watercolor_blog" do
    patch watercolor_blog_url(@watercolor_blog), params: { watercolor_blog: { created: @watercolor_blog.created, description: @watercolor_blog.description, title: @watercolor_blog.title } }
    assert_redirected_to watercolor_blog_url(@watercolor_blog)
  end

  test "should destroy watercolor_blog" do
    assert_difference('WatercolorBlog.count', -1) do
      delete watercolor_blog_url(@watercolor_blog)
    end

    assert_redirected_to watercolor_blogs_url
  end
end
