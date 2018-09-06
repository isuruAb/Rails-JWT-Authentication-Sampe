require 'test_helper'

class ElephantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elephant = elephants(:one)
  end

  test "should get index" do
    get elephants_url, as: :json
    assert_response :success
  end

  test "should create elephant" do
    assert_difference('Elephant.count') do
      post elephants_url, params: { elephant: { height: @elephant.height } }, as: :json
    end

    assert_response 201
  end

  test "should show elephant" do
    get elephant_url(@elephant), as: :json
    assert_response :success
  end

  test "should update elephant" do
    patch elephant_url(@elephant), params: { elephant: { height: @elephant.height } }, as: :json
    assert_response 200
  end

  test "should destroy elephant" do
    assert_difference('Elephant.count', -1) do
      delete elephant_url(@elephant), as: :json
    end

    assert_response 204
  end
end
