require 'test_helper'

class ChickenRunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chicken_run = chicken_runs(:one)
  end

  test "should get index" do
    get chicken_runs_url
    assert_response :success
  end

  test "should get new" do
    get new_chicken_run_url
    assert_response :success
  end

  test "should create chicken_run" do
    assert_difference('ChickenRun.count') do
      post chicken_runs_url, params: { chicken_run: {  } }
    end

    assert_redirected_to chicken_run_url(ChickenRun.last)
  end

  test "should show chicken_run" do
    get chicken_run_url(@chicken_run)
    assert_response :success
  end

  test "should get edit" do
    get edit_chicken_run_url(@chicken_run)
    assert_response :success
  end

  test "should update chicken_run" do
    patch chicken_run_url(@chicken_run), params: { chicken_run: {  } }
    assert_redirected_to chicken_run_url(@chicken_run)
  end

  test "should destroy chicken_run" do
    assert_difference('ChickenRun.count', -1) do
      delete chicken_run_url(@chicken_run)
    end

    assert_redirected_to chicken_runs_url
  end
end
