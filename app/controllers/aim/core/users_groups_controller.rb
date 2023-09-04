class Aim::Core::UsersGroupsController < ApplicationController
  before_action :set_aim_core_users_group, only: %i[ show edit update destroy ]

  # GET /aim/core/users_groups or /aim/core/users_groups.json
  def index
    @aim_core_users_groups = Aim::Core::UsersGroup.all
  end

  # GET /aim/core/users_groups/1 or /aim/core/users_groups/1.json
  def show
  end

  # GET /aim/core/users_groups/new
  def new
    @aim_core_users_group = Aim::Core::UsersGroup.new
  end

  # GET /aim/core/users_groups/1/edit
  def edit
  end

  # POST /aim/core/users_groups or /aim/core/users_groups.json
  def create
    @aim_core_users_group = Aim::Core::UsersGroup.new(aim_core_users_group_params)

    respond_to do |format|
      if @aim_core_users_group.save
        format.html { redirect_to aim_core_users_group_url(@aim_core_users_group), notice: "Users group was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_users_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_users_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/users_groups/1 or /aim/core/users_groups/1.json
  def update
    respond_to do |format|
      if @aim_core_users_group.update(aim_core_users_group_params)
        format.html { redirect_to aim_core_users_group_url(@aim_core_users_group), notice: "Users group was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_users_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_users_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/users_groups/1 or /aim/core/users_groups/1.json
  def destroy
    @aim_core_users_group.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_users_groups_url, notice: "Users group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_users_group
      @aim_core_users_group = Aim::Core::UsersGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_users_group_params
      params.require(:aim_core_users_group).permit(:user_id, :created_at, :updated_at)
    end
end
