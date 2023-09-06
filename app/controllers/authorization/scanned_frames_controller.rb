class Authorization::ScannedFramesController < ApplicationController
  before_action :set_authorization_scanned_frame, only: %i[ show edit update destroy ]

  # GET /authorization/scanned_frames or /authorization/scanned_frames.json
  def index
    @authorization_scanned_frames = Authorization::ScannedFrame.all
  end

  # GET /authorization/scanned_frames/1 or /authorization/scanned_frames/1.json
  def show
  end

  # GET /authorization/scanned_frames/new
  def new
    @authorization_scanned_frame = Authorization::ScannedFrame.new
  end

  # GET /authorization/scanned_frames/1/edit
  def edit
  end

  # POST /authorization/scanned_frames or /authorization/scanned_frames.json
  def create
    @authorization_scanned_frame = Authorization::ScannedFrame.new(authorization_scanned_frame_params)

    respond_to do |format|
      if @authorization_scanned_frame.save
        format.html { redirect_to authorization_scanned_frame_url(@authorization_scanned_frame), notice: "Scanned frame was successfully created." }
        format.json { render :show, status: :created, location: @authorization_scanned_frame }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_scanned_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/scanned_frames/1 or /authorization/scanned_frames/1.json
  def update
    respond_to do |format|
      if @authorization_scanned_frame.update(authorization_scanned_frame_params)
        format.html { redirect_to authorization_scanned_frame_url(@authorization_scanned_frame), notice: "Scanned frame was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_scanned_frame }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_scanned_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/scanned_frames/1 or /authorization/scanned_frames/1.json
  def destroy
    @authorization_scanned_frame.destroy

    respond_to do |format|
      format.html { redirect_to authorization_scanned_frames_url, notice: "Scanned frame was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_scanned_frame
      @authorization_scanned_frame = Authorization::ScannedFrame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_scanned_frame_params
      params.require(:authorization_scanned_frame).permit(:created_at, :map_id, :frame_text, :format_type)
    end
end
