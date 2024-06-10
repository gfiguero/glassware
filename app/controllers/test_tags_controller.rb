class TestTagsController < ApplicationController
  load_and_authorize_resource
  include Pagy::Backend

  before_action :set_test_tag, only: %i[ show edit update destroy ]
  before_action :set_test_tags, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /test_tags
  def index
    @pagy, @test_tags = pagy(@test_tags)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /test_tags/search.json
  def search
    @test_tags = params[:items].present? ? TestTag.new.filter_by_id(params[:items]) : TestTag.accessible_by(current_ability)

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /test_tags/1
  def show
  end

  # GET /test_tags/new
  def new
    @test_tag = TestTag.new
  end

  # GET /test_tags/1/edit
  def edit
  end

  # POST /test_tags
  def create
    @test_tag = TestTag.new(test_tag_params)

    if @test_tag.save
      redirect_to @test_tag, created: I18n.t('test_tag.message.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_tags/1
  def update
    if @test_tag.update(test_tag_params)
      redirect_to @test_tag, updated: I18n.t('test_tag.message.updated'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /test_tags/1
  def destroy
    @test_tag.destroy!
    redirect_to test_tags_url, delete: I18n.t('test_tag.message.deleted'), status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test_tag
    @test_tag = TestTag.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def test_tag_params
    params.require(:test_tag).permit(:name, :description)
  end

  def set_test_tags
    @test_tags = TestTag.accessible_by(current_ability) || TestTag.none
    @test_tags = @test_tags.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction]) if sort_params.present?
    filter_params.each { |attribute, value| @test_tags = @test_tags.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, :description).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: TestTag.all if params[:items] == 'all'
  end
end
