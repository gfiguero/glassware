class Aim::Checklist::ChecklistInterfaceGroupsController < ApplicationController
  before_action :set_aim_checklist_checklist_interface_group, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_interface_groups or /aim/checklist/checklist_interface_groups.json
  def index
    @aim_checklist_checklist_interface_groups = Aim::Checklist::ChecklistInterfaceGroup.all
  end

  # GET /aim/checklist/checklist_interface_groups/1 or /aim/checklist/checklist_interface_groups/1.json
  def show
  end

  # GET /aim/checklist/checklist_interface_groups/new
  def new
    @aim_checklist_checklist_interface_group = Aim::Checklist::ChecklistInterfaceGroup.new
  end

  # GET /aim/checklist/checklist_interface_groups/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_interface_groups or /aim/checklist/checklist_interface_groups.json
  def create
    @aim_checklist_checklist_interface_group = Aim::Checklist::ChecklistInterfaceGroup.new(aim_checklist_checklist_interface_group_params)

    respond_to do |format|
      if @aim_checklist_checklist_interface_group.save
        format.html { redirect_to aim_checklist_checklist_interface_group_url(@aim_checklist_checklist_interface_group), notice: "Checklist interface group was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_interface_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_interface_groups/1 or /aim/checklist/checklist_interface_groups/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_interface_group.update(aim_checklist_checklist_interface_group_params)
        format.html { redirect_to aim_checklist_checklist_interface_group_url(@aim_checklist_checklist_interface_group), notice: "Checklist interface group was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_interface_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_interface_groups/1 or /aim/checklist/checklist_interface_groups/1.json
  def destroy
    @aim_checklist_checklist_interface_group.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_interface_groups_url, notice: "Checklist interface group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_interface_group
      @aim_checklist_checklist_interface_group = Aim::Checklist::ChecklistInterfaceGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_interface_group_params
      params.require(:aim_checklist_checklist_interface_group).permit(:group_id)
    end
end
