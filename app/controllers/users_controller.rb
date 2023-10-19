class UsersController < ApplicationController
  include Pagy::Backend

  before_action :set_user, only: %i[ show edit update destroy ]
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /users
  def index
    @pagy, @users = pagy(User.all)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy!
    redirect_to users_url, notice: "User was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:serial_number, :name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :role, :created_at, :updated_at, :token, :deleted_at, :map_id, :type, :rut, :turn, :address, :gender, :last_names, :imei, :username, :position, :zone_id, :state, :state_updated_at, :phone_number, :external_id, :password_changed_at, :last_activity_at, :expired_at, :locked_at, :failed_attempts, :unlock_token, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :provider, :initials, :tracking_report, :slug, :current_loggable_type, :deactivate, :deactivation_date, :duration_range_id, :temporary_password)
    end
end
