require "application_system_test_case"

class WatercolorBlogsTest < ApplicationSystemTestCase
  setup do
    @watercolor_blog = watercolor_blogs(:one)
  end

  test "visiting the index" do
    visit watercolor_blogs_url
    assert_selector "h1", text: "Watercolor Blogs"
  end

  test "creating a Watercolor blog" do
    visit watercolor_blogs_url
    click_on "New Watercolor Blog"

    fill_in "Created", with: @watercolor_blog.created
    fill_in "Description", with: @watercolor_blog.description
    fill_in "Title", with: @watercolor_blog.title
    click_on "Create Watercolor blog"

    assert_text "Watercolor blog was successfully created"
    click_on "Back"
  end

  test "updating a Watercolor blog" do
    visit watercolor_blogs_url
    click_on "Edit", match: :first

    fill_in "Created", with: @watercolor_blog.created
    fill_in "Description", with: @watercolor_blog.description
    fill_in "Title", with: @watercolor_blog.title
    click_on "Update Watercolor blog"

    assert_text "Watercolor blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Watercolor blog" do
    visit watercolor_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watercolor blog was successfully destroyed"
  end
end
