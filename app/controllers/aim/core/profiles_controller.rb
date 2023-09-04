class Aim::Core::ProfilesController < ApplicationController
  before_action :set_aim_core_profile, only: %i[ show edit update destroy ]

  # GET /aim/core/profiles or /aim/core/profiles.json
  def index
    @aim_core_profiles = Aim::Core::Profile.all
  end

  # GET /aim/core/profiles/1 or /aim/core/profiles/1.json
  def show
  end

  # GET /aim/core/profiles/new
  def new
    @aim_core_profile = Aim::Core::Profile.new
  end

  # GET /aim/core/profiles/1/edit
  def edit
  end

  # POST /aim/core/profiles or /aim/core/profiles.json
  def create
    @aim_core_profile = Aim::Core::Profile.new(aim_core_profile_params)

    respond_to do |format|
      if @aim_core_profile.save
        format.html { redirect_to aim_core_profile_url(@aim_core_profile), notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/profiles/1 or /aim/core/profiles/1.json
  def update
    respond_to do |format|
      if @aim_core_profile.update(aim_core_profile_params)
        format.html { redirect_to aim_core_profile_url(@aim_core_profile), notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/profiles/1 or /aim/core/profiles/1.json
  def destroy
    @aim_core_profile.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_profile
      @aim_core_profile = Aim::Core::Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_profile_params
      params.require(:aim_core_profile).permit(:name, :created_at, :updated_at, :description, :usage, :initial_role_ids)
    end
end
