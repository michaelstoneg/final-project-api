require 'test_helper'

class DisplaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @display = displays(:one)
  end

  test "should get index" do
    get displays_url, as: :json
    assert_response :success
  end

  test "should create display" do
    assert_difference('Display.count') do
      post displays_url, params: { display: { ar: @display.ar, archived: @display.archived, items_id: @display.items_id, layout: @display.layout, likes: @display.likes, name: @display.name, public: @display.public, size: @display.size, theme: @display.theme, users_id: @display.users_id } }, as: :json
    end

    assert_response 201
  end

  test "should show display" do
    get display_url(@display), as: :json
    assert_response :success
  end

  test "should update display" do
    patch display_url(@display), params: { display: { ar: @display.ar, archived: @display.archived, items_id: @display.items_id, layout: @display.layout, likes: @display.likes, name: @display.name, public: @display.public, size: @display.size, theme: @display.theme, users_id: @display.users_id } }, as: :json
    assert_response 200
  end

  test "should destroy display" do
    assert_difference('Display.count', -1) do
      delete display_url(@display), as: :json
    end

    assert_response 204
  end
end
