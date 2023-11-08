class GroupsController < ApplicationController
  load_and_authorize_resource
  include Pagy::Backend

  before_action :set_group, only: %i[ show edit update destroy ]
  before_action :set_groups, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /groups
  def index
    @pagy, @groups = pagy(@groups)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /groups/search
  def search
    @groups = params[:items].present? ? Group.filter_by_id(params[:items]) : Group.all

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /groups/1
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: "Group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      redirect_to @group, notice: "Group was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy!
    redirect_to groups_url, notice: "Group was successfully destroyed.", status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = Group.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_params
    params.require(:group).permit(:name, :created_at, :updated_at, :kind)
  end

  def set_groups
    @groups = Group.accessible_by(current_ability)
    @groups = @groups.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction]) if sort_params.present?
    filter_params.each { |attribute, value| @groups = @groups.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, profiles: []).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: Group.all if params[:items] == 'all'
  end
end
