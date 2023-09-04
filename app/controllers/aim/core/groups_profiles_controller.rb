class Aim::Core::GroupsProfilesController < ApplicationController
  before_action :set_aim_core_groups_profile, only: %i[ show edit update destroy ]

  # GET /aim/core/groups_profiles or /aim/core/groups_profiles.json
  def index
    @aim_core_groups_profiles = Aim::Core::GroupsProfile.all
  end

  # GET /aim/core/groups_profiles/1 or /aim/core/groups_profiles/1.json
  def show
  end

  # GET /aim/core/groups_profiles/new
  def new
    @aim_core_groups_profile = Aim::Core::GroupsProfile.new
  end

  # GET /aim/core/groups_profiles/1/edit
  def edit
  end

  # POST /aim/core/groups_profiles or /aim/core/groups_profiles.json
  def create
    @aim_core_groups_profile = Aim::Core::GroupsProfile.new(aim_core_groups_profile_params)

    respond_to do |format|
      if @aim_core_groups_profile.save
        format.html { redirect_to aim_core_groups_profile_url(@aim_core_groups_profile), notice: "Groups profile was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_groups_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_groups_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/groups_profiles/1 or /aim/core/groups_profiles/1.json
  def update
    respond_to do |format|
      if @aim_core_groups_profile.update(aim_core_groups_profile_params)
        format.html { redirect_to aim_core_groups_profile_url(@aim_core_groups_profile), notice: "Groups profile was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_groups_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_groups_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/groups_profiles/1 or /aim/core/groups_profiles/1.json
  def destroy
    @aim_core_groups_profile.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_groups_profiles_url, notice: "Groups profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_groups_profile
      @aim_core_groups_profile = Aim::Core::GroupsProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_groups_profile_params
      params.require(:aim_core_groups_profile).permit(:profile_id, :created_at, :updated_at)
    end
end
