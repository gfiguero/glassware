class ProfilesController < ApplicationController
  include Pagy::Backend

  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :set_profiles, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /profiles
  def index
    @pagy, @profiles = pagy(@profiles)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /profiles/search.json
  def search
    @profiles = params[:items].present? ? Profile.new.filter_by_id(params[:items]) : Profile.all

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /profiles/1
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile, notice: "Profile was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: "Profile was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy!
    redirect_to profiles_url, notice: "Profile was successfully destroyed.", status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:name, :description, :usage, :initial_role_ids, :roles_id)
  end

  def set_profiles
    @profiles = if sort_params.present?
      Profile.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction])
    else
      Profile.send('sort_by_id')
    end

    filter_params.each { |attribute, value| @profiles = @profiles.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, :description, :usage, :initial_role_ids, :roles_id).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: Profile.all if params[:items] == 'all'
  end
end
