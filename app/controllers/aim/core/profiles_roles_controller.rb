class Aim::Core::ProfilesRolesController < ApplicationController
  before_action :set_aim_core_profiles_role, only: %i[ show edit update destroy ]

  # GET /aim/core/profiles_roles or /aim/core/profiles_roles.json
  def index
    @aim_core_profiles_roles = Aim::Core::ProfilesRole.all
  end

  # GET /aim/core/profiles_roles/1 or /aim/core/profiles_roles/1.json
  def show
  end

  # GET /aim/core/profiles_roles/new
  def new
    @aim_core_profiles_role = Aim::Core::ProfilesRole.new
  end

  # GET /aim/core/profiles_roles/1/edit
  def edit
  end

  # POST /aim/core/profiles_roles or /aim/core/profiles_roles.json
  def create
    @aim_core_profiles_role = Aim::Core::ProfilesRole.new(aim_core_profiles_role_params)

    respond_to do |format|
      if @aim_core_profiles_role.save
        format.html { redirect_to aim_core_profiles_role_url(@aim_core_profiles_role), notice: "Profiles role was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_profiles_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_profiles_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/profiles_roles/1 or /aim/core/profiles_roles/1.json
  def update
    respond_to do |format|
      if @aim_core_profiles_role.update(aim_core_profiles_role_params)
        format.html { redirect_to aim_core_profiles_role_url(@aim_core_profiles_role), notice: "Profiles role was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_profiles_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_profiles_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/profiles_roles/1 or /aim/core/profiles_roles/1.json
  def destroy
    @aim_core_profiles_role.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_profiles_roles_url, notice: "Profiles role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_profiles_role
      @aim_core_profiles_role = Aim::Core::ProfilesRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_profiles_role_params
      params.require(:aim_core_profiles_role).permit(:profile_id, :created_at, :updated_at)
    end
end
