class Aim::Checklist::ChecklistAnswerOptionsTagsController < ApplicationController
  before_action :set_aim_checklist_checklist_answer_options_tag, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_answer_options_tags or /aim/checklist/checklist_answer_options_tags.json
  def index
    @aim_checklist_checklist_answer_options_tags = Aim::Checklist::ChecklistAnswerOptionsTag.all
  end

  # GET /aim/checklist/checklist_answer_options_tags/1 or /aim/checklist/checklist_answer_options_tags/1.json
  def show
  end

  # GET /aim/checklist/checklist_answer_options_tags/new
  def new
    @aim_checklist_checklist_answer_options_tag = Aim::Checklist::ChecklistAnswerOptionsTag.new
  end

  # GET /aim/checklist/checklist_answer_options_tags/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_answer_options_tags or /aim/checklist/checklist_answer_options_tags.json
  def create
    @aim_checklist_checklist_answer_options_tag = Aim::Checklist::ChecklistAnswerOptionsTag.new(aim_checklist_checklist_answer_options_tag_params)

    respond_to do |format|
      if @aim_checklist_checklist_answer_options_tag.save
        format.html { redirect_to aim_checklist_checklist_answer_options_tag_url(@aim_checklist_checklist_answer_options_tag), notice: "Checklist answer options tag was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_answer_options_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_answer_options_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_answer_options_tags/1 or /aim/checklist/checklist_answer_options_tags/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_answer_options_tag.update(aim_checklist_checklist_answer_options_tag_params)
        format.html { redirect_to aim_checklist_checklist_answer_options_tag_url(@aim_checklist_checklist_answer_options_tag), notice: "Checklist answer options tag was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_answer_options_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_answer_options_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_answer_options_tags/1 or /aim/checklist/checklist_answer_options_tags/1.json
  def destroy
    @aim_checklist_checklist_answer_options_tag.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_answer_options_tags_url, notice: "Checklist answer options tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_answer_options_tag
      @aim_checklist_checklist_answer_options_tag = Aim::Checklist::ChecklistAnswerOptionsTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_answer_options_tag_params
      params.require(:aim_checklist_checklist_answer_options_tag).permit(:checklist_answer_option_id)
    end
end
