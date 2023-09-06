class Aim::Authorization::HistoryStatesController < ApplicationController
  before_action :set_aim_authorization_history_state, only: %i[ show edit update destroy ]

  # GET /aim/authorization/history_states or /aim/authorization/history_states.json
  def index
    @aim_authorization_history_states = Aim::Authorization::HistoryState.all
  end

  # GET /aim/authorization/history_states/1 or /aim/authorization/history_states/1.json
  def show
  end

  # GET /aim/authorization/history_states/new
  def new
    @aim_authorization_history_state = Aim::Authorization::HistoryState.new
  end

  # GET /aim/authorization/history_states/1/edit
  def edit
  end

  # POST /aim/authorization/history_states or /aim/authorization/history_states.json
  def create
    @aim_authorization_history_state = Aim::Authorization::HistoryState.new(aim_authorization_history_state_params)

    respond_to do |format|
      if @aim_authorization_history_state.save
        format.html { redirect_to aim_authorization_history_state_url(@aim_authorization_history_state), notice: "History state was successfully created." }
        format.json { render :show, status: :created, location: @aim_authorization_history_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_history_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/authorization/history_states/1 or /aim/authorization/history_states/1.json
  def update
    respond_to do |format|
      if @aim_authorization_history_state.update(aim_authorization_history_state_params)
        format.html { redirect_to aim_authorization_history_state_url(@aim_authorization_history_state), notice: "History state was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_authorization_history_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_history_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/authorization/history_states/1 or /aim/authorization/history_states/1.json
  def destroy
    @aim_authorization_history_state.destroy

    respond_to do |format|
      format.html { redirect_to aim_authorization_history_states_url, notice: "History state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_authorization_history_state
      @aim_authorization_history_state = Aim::Authorization::HistoryState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_authorization_history_state_params
      params.require(:aim_authorization_history_state).permit(:request_id, :state, :state_translate, :date)
    end
end
