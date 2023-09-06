class Authorization::RequestTypeWorkerProfilesController < ApplicationController
  before_action :set_authorization_request_type_worker_profile, only: %i[ show edit update destroy ]

  # GET /authorization/request_type_worker_profiles or /authorization/request_type_worker_profiles.json
  def index
    @authorization_request_type_worker_profiles = Authorization::RequestTypeWorkerProfile.all
  end

  # GET /authorization/request_type_worker_profiles/1 or /authorization/request_type_worker_profiles/1.json
  def show
  end

  # GET /authorization/request_type_worker_profiles/new
  def new
    @authorization_request_type_worker_profile = Authorization::RequestTypeWorkerProfile.new
  end

  # GET /authorization/request_type_worker_profiles/1/edit
  def edit
  end

  # POST /authorization/request_type_worker_profiles or /authorization/request_type_worker_profiles.json
  def create
    @authorization_request_type_worker_profile = Authorization::RequestTypeWorkerProfile.new(authorization_request_type_worker_profile_params)

    respond_to do |format|
      if @authorization_request_type_worker_profile.save
        format.html { redirect_to authorization_request_type_worker_profile_url(@authorization_request_type_worker_profile), notice: "Request type worker profile was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type_worker_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_worker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_type_worker_profiles/1 or /authorization/request_type_worker_profiles/1.json
  def update
    respond_to do |format|
      if @authorization_request_type_worker_profile.update(authorization_request_type_worker_profile_params)
        format.html { redirect_to authorization_request_type_worker_profile_url(@authorization_request_type_worker_profile), notice: "Request type worker profile was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type_worker_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_worker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_type_worker_profiles/1 or /authorization/request_type_worker_profiles/1.json
  def destroy
    @authorization_request_type_worker_profile.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_type_worker_profiles_url, notice: "Request type worker profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type_worker_profile
      @authorization_request_type_worker_profile = Authorization::RequestTypeWorkerProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_worker_profile_params
      params.require(:authorization_request_type_worker_profile).permit(:name, :request_type_id, :validation_type, :default, :workerable_type)
    end
end
