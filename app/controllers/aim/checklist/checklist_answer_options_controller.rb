class Aim::Checklist::ChecklistAnswerOptionsController < ApplicationController
  before_action :set_aim_checklist_checklist_answer_option, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_answer_options or /aim/checklist/checklist_answer_options.json
  def index
    @aim_checklist_checklist_answer_options = Aim::Checklist::ChecklistAnswerOption.all
  end

  # GET /aim/checklist/checklist_answer_options/1 or /aim/checklist/checklist_answer_options/1.json
  def show
  end

  # GET /aim/checklist/checklist_answer_options/new
  def new
    @aim_checklist_checklist_answer_option = Aim::Checklist::ChecklistAnswerOption.new
  end

  # GET /aim/checklist/checklist_answer_options/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_answer_options or /aim/checklist/checklist_answer_options.json
  def create
    @aim_checklist_checklist_answer_option = Aim::Checklist::ChecklistAnswerOption.new(aim_checklist_checklist_answer_option_params)

    respond_to do |format|
      if @aim_checklist_checklist_answer_option.save
        format.html { redirect_to aim_checklist_checklist_answer_option_url(@aim_checklist_checklist_answer_option), notice: "Checklist answer option was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_answer_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_answer_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_answer_options/1 or /aim/checklist/checklist_answer_options/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_answer_option.update(aim_checklist_checklist_answer_option_params)
        format.html { redirect_to aim_checklist_checklist_answer_option_url(@aim_checklist_checklist_answer_option), notice: "Checklist answer option was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_answer_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_answer_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_answer_options/1 or /aim/checklist/checklist_answer_options/1.json
  def destroy
    @aim_checklist_checklist_answer_option.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_answer_options_url, notice: "Checklist answer option was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_answer_option
      @aim_checklist_checklist_answer_option = Aim::Checklist::ChecklistAnswerOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_answer_option_params
      params.require(:aim_checklist_checklist_answer_option).permit(:name, :created_at, :updated_at)
    end
end
