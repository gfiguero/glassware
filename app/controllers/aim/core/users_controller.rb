class Aim::Core::UsersController < ApplicationController
  before_action :set_aim_core_user, only: %i[ show edit update destroy ]

  # GET /aim/core/users or /aim/core/users.json
  def index
    @aim_core_users = Aim::Core::User.all
  end

  # GET /aim/core/users/1 or /aim/core/users/1.json
  def show
  end

  # GET /aim/core/users/new
  def new
    @aim_core_user = Aim::Core::User.new
  end

  # GET /aim/core/users/1/edit
  def edit
  end

  # POST /aim/core/users or /aim/core/users.json
  def create
    @aim_core_user = Aim::Core::User.new(aim_core_user_params)

    respond_to do |format|
      if @aim_core_user.save
        format.html { redirect_to aim_core_user_url(@aim_core_user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/users/1 or /aim/core/users/1.json
  def update
    respond_to do |format|
      if @aim_core_user.update(aim_core_user_params)
        format.html { redirect_to aim_core_user_url(@aim_core_user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/users/1 or /aim/core/users/1.json
  def destroy
    @aim_core_user.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_user
      @aim_core_user = Aim::Core::User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_user_params
      params.require(:aim_core_user).permit(:name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :role, :created_at, :updated_at, :token, :deleted_at, :map_id, :type, :rut, :turn, :address, :gender, :last_names, :imei, :username, :position, :zone_id, :state, :state_updated_at, :phone_number, :external_id, :password_changed_at, :last_activity_at, :expired_at, :locked_at, :failed_attempts, :unlock_token, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :provider, :initials, :tracking_report, :slug, :current_loggable_type, :deactivate, :deactivation_date, :duration_range_id, :temporary_password)
    end
end
