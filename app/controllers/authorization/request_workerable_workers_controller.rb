class Authorization::RequestWorkerableWorkersController < ApplicationController
  before_action :set_authorization_request_workerable_worker, only: %i[ show edit update destroy ]

  # GET /authorization/request_workerable_workers or /authorization/request_workerable_workers.json
  def index
    @authorization_request_workerable_workers = Authorization::RequestWorkerableWorker.all
  end

  # GET /authorization/request_workerable_workers/1 or /authorization/request_workerable_workers/1.json
  def show
  end

  # GET /authorization/request_workerable_workers/new
  def new
    @authorization_request_workerable_worker = Authorization::RequestWorkerableWorker.new
  end

  # GET /authorization/request_workerable_workers/1/edit
  def edit
  end

  # POST /authorization/request_workerable_workers or /authorization/request_workerable_workers.json
  def create
    @authorization_request_workerable_worker = Authorization::RequestWorkerableWorker.new(authorization_request_workerable_worker_params)

    respond_to do |format|
      if @authorization_request_workerable_worker.save
        format.html { redirect_to authorization_request_workerable_worker_url(@authorization_request_workerable_worker), notice: "Request workerable worker was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_workerable_worker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_workerable_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_workerable_workers/1 or /authorization/request_workerable_workers/1.json
  def update
    respond_to do |format|
      if @authorization_request_workerable_worker.update(authorization_request_workerable_worker_params)
        format.html { redirect_to authorization_request_workerable_worker_url(@authorization_request_workerable_worker), notice: "Request workerable worker was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_workerable_worker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_workerable_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_workerable_workers/1 or /authorization/request_workerable_workers/1.json
  def destroy
    @authorization_request_workerable_worker.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_workerable_workers_url, notice: "Request workerable worker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_workerable_worker
      @authorization_request_workerable_worker = Authorization::RequestWorkerableWorker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_workerable_worker_params
      params.require(:authorization_request_workerable_worker).permit(:request_worker_id)
    end
end
