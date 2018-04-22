require 'test_helper'

class FakeApisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fake_api = fake_apis(:one)
  end

  test "should get index" do
    get fake_apis_url
    assert_response :success
  end

  test "should get new" do
    get new_fake_api_url
    assert_response :success
  end

  test "should create fake_api" do
    assert_difference('FakeApi.count') do
      post fake_apis_url, params: { fake_api: { method: @fake_api.method, response: @fake_api.response, uri: @fake_api.uri } }
    end

    assert_redirected_to fake_api_url(FakeApi.last)
  end

  test "should show fake_api" do
    get fake_api_url(@fake_api)
    assert_response :success
  end

  test "should get edit" do
    get edit_fake_api_url(@fake_api)
    assert_response :success
  end

  test "should update fake_api" do
    patch fake_api_url(@fake_api), params: { fake_api: { method: @fake_api.method, response: @fake_api.response, uri: @fake_api.uri } }
    assert_redirected_to fake_api_url(@fake_api)
  end

  test "should destroy fake_api" do
    assert_difference('FakeApi.count', -1) do
      delete fake_api_url(@fake_api)
    end

    assert_redirected_to fake_apis_url
  end
end
