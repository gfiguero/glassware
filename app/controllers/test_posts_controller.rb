class TestPostsController < ApplicationController
  load_and_authorize_resource
  include Pagy::Backend

  before_action :set_test_post, only: %i[ show edit update destroy ]
  before_action :set_test_posts, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /test_posts
  def index
    @pagy, @test_posts = pagy(@test_posts)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /test_posts/search.json
  def search
    @test_posts = params[:items].present? ? TestPost.new.filter_by_id(params[:items]) : TestPost.accessible_by(current_ability)

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /test_posts/1
  def show
  end

  # GET /test_posts/new
  def new
    @test_post = TestPost.new
  end

  # GET /test_posts/1/edit
  def edit
  end

  # POST /test_posts
  def create
    @test_post = TestPost.new(test_post_params)

    if @test_post.save
      redirect_to @test_post, created: I18n.t('test_post.message.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_posts/1
  def update
    if @test_post.update(test_post_params)
      redirect_to @test_post, updated: I18n.t('test_post.message.updated'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /test_posts/1
  def destroy
    @test_post.destroy!
    redirect_to test_posts_url, delete: I18n.t('test_post.message.deleted'), status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test_post
    @test_post = TestPost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def test_post_params
    params.require(:test_post).permit(:content, :test_article_id)
  end

  def set_test_posts
    @test_posts = TestPost.accessible_by(current_ability) || TestPost.none
    @test_posts = @test_posts.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction]) if sort_params.present?
    filter_params.each { |attribute, value| @test_posts = @test_posts.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :content, :test_article_id).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: TestPost.all if params[:items] == 'all'
  end
end
