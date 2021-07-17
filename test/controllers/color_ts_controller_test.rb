require "test_helper"

class ColorTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_t = color_ts(:one)
  end

  test "should get index" do
    get color_ts_url, as: :json
    assert_response :success
  end

  test "should create color_t" do
    assert_difference('ColorT.count') do
      post color_ts_url, params: { color_t: { comments: @color_t.comments, email: @color_t.email } }, as: :json
    end

    assert_response 201
  end

  test "should show color_t" do
    get color_t_url(@color_t), as: :json
    assert_response :success
  end

  test "should update color_t" do
    patch color_t_url(@color_t), params: { color_t: { comments: @color_t.comments, email: @color_t.email } }, as: :json
    assert_response 200
  end

  test "should destroy color_t" do
    assert_difference('ColorT.count', -1) do
      delete color_t_url(@color_t), as: :json
    end

    assert_response 204
  end
end
