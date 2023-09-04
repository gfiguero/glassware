class Aim::Checklist::ChecklistInterfaceCustomReportsController < ApplicationController
  before_action :set_aim_checklist_checklist_interface_custom_report, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_interface_custom_reports or /aim/checklist/checklist_interface_custom_reports.json
  def index
    @aim_checklist_checklist_interface_custom_reports = Aim::Checklist::ChecklistInterfaceCustomReport.all
  end

  # GET /aim/checklist/checklist_interface_custom_reports/1 or /aim/checklist/checklist_interface_custom_reports/1.json
  def show
  end

  # GET /aim/checklist/checklist_interface_custom_reports/new
  def new
    @aim_checklist_checklist_interface_custom_report = Aim::Checklist::ChecklistInterfaceCustomReport.new
  end

  # GET /aim/checklist/checklist_interface_custom_reports/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_interface_custom_reports or /aim/checklist/checklist_interface_custom_reports.json
  def create
    @aim_checklist_checklist_interface_custom_report = Aim::Checklist::ChecklistInterfaceCustomReport.new(aim_checklist_checklist_interface_custom_report_params)

    respond_to do |format|
      if @aim_checklist_checklist_interface_custom_report.save
        format.html { redirect_to aim_checklist_checklist_interface_custom_report_url(@aim_checklist_checklist_interface_custom_report), notice: "Checklist interface custom report was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_interface_custom_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_custom_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_interface_custom_reports/1 or /aim/checklist/checklist_interface_custom_reports/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_interface_custom_report.update(aim_checklist_checklist_interface_custom_report_params)
        format.html { redirect_to aim_checklist_checklist_interface_custom_report_url(@aim_checklist_checklist_interface_custom_report), notice: "Checklist interface custom report was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_interface_custom_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_custom_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_interface_custom_reports/1 or /aim/checklist/checklist_interface_custom_reports/1.json
  def destroy
    @aim_checklist_checklist_interface_custom_report.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_interface_custom_reports_url, notice: "Checklist interface custom report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_interface_custom_report
      @aim_checklist_checklist_interface_custom_report = Aim::Checklist::ChecklistInterfaceCustomReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_interface_custom_report_params
      params.require(:aim_checklist_checklist_interface_custom_report).permit(:custom_report_id, :checklist_interface_id)
    end
end
