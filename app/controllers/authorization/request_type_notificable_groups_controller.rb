class Authorization::RequestTypeNotificableGroupsController < ApplicationController
  before_action :set_authorization_request_type_notificable_group, only: %i[ show edit update destroy ]

  # GET /authorization/request_type_notificable_groups or /authorization/request_type_notificable_groups.json
  def index
    @authorization_request_type_notificable_groups = Authorization::RequestTypeNotificableGroup.all
  end

  # GET /authorization/request_type_notificable_groups/1 or /authorization/request_type_notificable_groups/1.json
  def show
  end

  # GET /authorization/request_type_notificable_groups/new
  def new
    @authorization_request_type_notificable_group = Authorization::RequestTypeNotificableGroup.new
  end

  # GET /authorization/request_type_notificable_groups/1/edit
  def edit
  end

  # POST /authorization/request_type_notificable_groups or /authorization/request_type_notificable_groups.json
  def create
    @authorization_request_type_notificable_group = Authorization::RequestTypeNotificableGroup.new(authorization_request_type_notificable_group_params)

    respond_to do |format|
      if @authorization_request_type_notificable_group.save
        format.html { redirect_to authorization_request_type_notificable_group_url(@authorization_request_type_notificable_group), notice: "Request type notificable group was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type_notificable_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_notificable_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_type_notificable_groups/1 or /authorization/request_type_notificable_groups/1.json
  def update
    respond_to do |format|
      if @authorization_request_type_notificable_group.update(authorization_request_type_notificable_group_params)
        format.html { redirect_to authorization_request_type_notificable_group_url(@authorization_request_type_notificable_group), notice: "Request type notificable group was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type_notificable_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_notificable_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_type_notificable_groups/1 or /authorization/request_type_notificable_groups/1.json
  def destroy
    @authorization_request_type_notificable_group.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_type_notificable_groups_url, notice: "Request type notificable group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type_notificable_group
      @authorization_request_type_notificable_group = Authorization::RequestTypeNotificableGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_notificable_group_params
      params.require(:authorization_request_type_notificable_group).permit(:request_type_id, :group_id, :created_at, :updated_at, :deleted_at)
    end
end
