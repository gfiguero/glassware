class Authorization::RequestTypeAuthorizingGroupsController < ApplicationController
  before_action :set_authorization_request_type_authorizing_group, only: %i[ show edit update destroy ]

  # GET /authorization/request_type_authorizing_groups or /authorization/request_type_authorizing_groups.json
  def index
    @authorization_request_type_authorizing_groups = Authorization::RequestTypeAuthorizingGroup.all
  end

  # GET /authorization/request_type_authorizing_groups/1 or /authorization/request_type_authorizing_groups/1.json
  def show
  end

  # GET /authorization/request_type_authorizing_groups/new
  def new
    @authorization_request_type_authorizing_group = Authorization::RequestTypeAuthorizingGroup.new
  end

  # GET /authorization/request_type_authorizing_groups/1/edit
  def edit
  end

  # POST /authorization/request_type_authorizing_groups or /authorization/request_type_authorizing_groups.json
  def create
    @authorization_request_type_authorizing_group = Authorization::RequestTypeAuthorizingGroup.new(authorization_request_type_authorizing_group_params)

    respond_to do |format|
      if @authorization_request_type_authorizing_group.save
        format.html { redirect_to authorization_request_type_authorizing_group_url(@authorization_request_type_authorizing_group), notice: "Request type authorizing group was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type_authorizing_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_authorizing_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_type_authorizing_groups/1 or /authorization/request_type_authorizing_groups/1.json
  def update
    respond_to do |format|
      if @authorization_request_type_authorizing_group.update(authorization_request_type_authorizing_group_params)
        format.html { redirect_to authorization_request_type_authorizing_group_url(@authorization_request_type_authorizing_group), notice: "Request type authorizing group was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type_authorizing_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_authorizing_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_type_authorizing_groups/1 or /authorization/request_type_authorizing_groups/1.json
  def destroy
    @authorization_request_type_authorizing_group.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_type_authorizing_groups_url, notice: "Request type authorizing group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type_authorizing_group
      @authorization_request_type_authorizing_group = Authorization::RequestTypeAuthorizingGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_authorizing_group_params
      params.require(:authorization_request_type_authorizing_group).permit(:request_type_id, :group_id, :created_at, :updated_at, :deleted_at)
    end
end
