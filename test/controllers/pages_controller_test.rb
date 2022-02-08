# == Schema Information
#
# Table name: pages
#
#  id         :bigint           not null, primary key
#  title      :text
#  menu_text  :text
#  type       :text
#  header_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string
#
require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url, as: :json
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post pages_url, params: { page: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show page" do
    get page_url(@page), as: :json
    assert_response :success
  end

  test "should update page" do
    patch page_url(@page), params: { page: {  } }, as: :json
    assert_response 200
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page), as: :json
    end

    assert_response 204
  end
end
