class TestArticlesController < ApplicationController
  load_and_authorize_resource
  include Pagy::Backend

  before_action :set_test_article, only: %i[ show edit update destroy ]
  before_action :set_test_articles, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /test_articles
  def index
    @pagy, @test_articles = pagy(@test_articles)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /test_articles/search.json
  def search
    @test_articles = params[:items].present? ? TestArticle.new.filter_by_id(params[:items]) : TestArticle.accessible_by(current_ability)

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /test_articles/1
  def show
    @test_article
  end

  # GET /test_articles/new
  def new
    @test_article = TestArticle.new
  end

  # GET /test_articles/1/edit
  def edit
  end

  # POST /test_articles
  def create
    @test_article = TestArticle.new(test_article_params)

    if @test_article.save
      redirect_to @test_article, created: I18n.t('test_article.message.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_articles/1
  def update
    if @test_article.update(test_article_params)
      redirect_to @test_article, updated: I18n.t('test_article.message.updated'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /test_articles/1
  def destroy
    #@test_article.destroy!
    flash.now[:deleted] = I18n.t('test_article.message.deleted')
    respond_to do |format|
      format.html { redirect_to test_articles_path, deleted: I18n.t('test_article.message.deleted'), status: :see_other }
      format.json { head :no_content }
      format.turbo_stream { render turbo_stream: [ turbo_stream.remove("test_article_#{@test_article.id}"), turbo_stream.update("turbo-notification", partial: 'layouts/shared/notification_row') ] }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test_article
    @test_article = TestArticle.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def test_article_params
    params.require(:test_article).permit(:name, :content, :option, :password, :password_confirmation)
  end

  def set_test_articles
    @test_articles = TestArticle.accessible_by(current_ability) || TestArticle.none
    @test_articles = @test_articles.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction]) if sort_params.present?
    filter_params.each { |attribute, value| @test_articles = @test_articles.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, :content, :option, :password, :password_confirmation).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: TestArticle.all if params[:items] == 'all'
  end
end
