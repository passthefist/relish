require 'test_helper'

class UpcomingReleasesControllerTest < ActionController::TestCase
  setup do
    @upcoming_release = upcoming_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upcoming_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upcoming_release" do
    assert_difference('UpcomingRelease.count') do
      post :create, upcoming_release: { scheduledTime: @upcoming_release.scheduledTime }
    end

    assert_redirected_to upcoming_release_path(assigns(:upcoming_release))
  end

  test "should show upcoming_release" do
    get :show, id: @upcoming_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upcoming_release
    assert_response :success
  end

  test "should update upcoming_release" do
    put :update, id: @upcoming_release, upcoming_release: { scheduledTime: @upcoming_release.scheduledTime }
    assert_redirected_to upcoming_release_path(assigns(:upcoming_release))
  end

  test "should destroy upcoming_release" do
    assert_difference('UpcomingRelease.count', -1) do
      delete :destroy, id: @upcoming_release
    end

    assert_redirected_to upcoming_releases_path
  end
end
