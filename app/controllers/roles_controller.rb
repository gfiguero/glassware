class RolesController < ApplicationController
  include Pagy::Backend

  before_action :set_role, only: %i[ show edit update destroy ]
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /roles
  def index
    @pagy, @roles = pagy(Role.all)

    respond_to do |format|
      format.html
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
      params.require(:role).permit(:name, :created_at, :updated_at, :usage)
    end
end
