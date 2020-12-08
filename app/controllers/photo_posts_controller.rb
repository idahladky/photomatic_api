class PhotoPostsController < ApplicationController
  before_action :set_photo_post, only: [:show, :update, :destroy]

  # GET /photo_posts
  def index
    @photo_posts = PhotoPost.all

    render json: @photo_posts
  end

  # GET /photo_posts/1
  def show
    render json: @photo_post
  end

  # POST /photo_posts
  def create
    @photo_post = PhotoPost.new(photo_post_params)

    if @photo_post.save
      render json: @photo_post, status: :created, location: @photo_post
    else
      render json: @photo_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photo_posts/1
  def update
    if @photo_post.update(photo_post_params)
      render json: @photo_post
    else
      render json: @photo_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photo_posts/1
  def destroy
    @photo_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_post
      @photo_post = PhotoPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_post_params
      params.require(:photo_post).permit(:image, :notes, :author)
    end
end
