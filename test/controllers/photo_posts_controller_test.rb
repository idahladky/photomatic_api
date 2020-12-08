require 'test_helper'

class PhotoPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_post = photo_posts(:one)
  end

  test "should get index" do
    get photo_posts_url, as: :json
    assert_response :success
  end

  test "should create photo_post" do
    assert_difference('PhotoPost.count') do
      post photo_posts_url, params: { photo_post: { author: @photo_post.author, image: @photo_post.image, notes: @photo_post.notes } }, as: :json
    end

    assert_response 201
  end

  test "should show photo_post" do
    get photo_post_url(@photo_post), as: :json
    assert_response :success
  end

  test "should update photo_post" do
    patch photo_post_url(@photo_post), params: { photo_post: { author: @photo_post.author, image: @photo_post.image, notes: @photo_post.notes } }, as: :json
    assert_response 200
  end

  test "should destroy photo_post" do
    assert_difference('PhotoPost.count', -1) do
      delete photo_post_url(@photo_post), as: :json
    end

    assert_response 204
  end
end
