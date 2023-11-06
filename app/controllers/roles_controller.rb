class RolesController < ApplicationController
  include Pagy::Backend

  before_action :set_role, only: %i[ show edit update destroy ]
  before_action :set_roles, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /roles
  def index
    @pagy, @roles = pagy(@roles)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /roles/search.json
  def search
    @roles = params[:items].present? ? Role.new.filter_by_id(params[:items]) : Role.all

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /roles/1
  def show
  end

  # GET /roles/new
  def new
    @role = Role.new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to @role, notice: "Role was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roles/1
  def update
    if @role.update(role_params)
      redirect_to @role, notice: "Role was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /roles/1
  def destroy
    @role.destroy!
    redirect_to roles_url, notice: "Role was successfully destroyed.", status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_role
    @role = Role.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def role_params
    params.require(:role).permit(:name, :created_at, :updated_at, :usage, :profiles_id)
  end

  def set_roles
    @roles = if sort_params.present?
      Role.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction])
    else
      Role.send('sort_by_id')
    end

    filter_params.each { |attribute, value| @roles = @roles.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, :created_at, :updated_at, :usage, :profiles_id).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: Role.all if params[:items] == 'all'
  end
end
