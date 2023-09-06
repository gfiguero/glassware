class Authorization::RequestTypeNotificableExceptionsController < ApplicationController
  before_action :set_authorization_request_type_notificable_exception, only: %i[ show edit update destroy ]

  # GET /authorization/request_type_notificable_exceptions or /authorization/request_type_notificable_exceptions.json
  def index
    @authorization_request_type_notificable_exceptions = Authorization::RequestTypeNotificableException.all
  end

  # GET /authorization/request_type_notificable_exceptions/1 or /authorization/request_type_notificable_exceptions/1.json
  def show
  end

  # GET /authorization/request_type_notificable_exceptions/new
  def new
    @authorization_request_type_notificable_exception = Authorization::RequestTypeNotificableException.new
  end

  # GET /authorization/request_type_notificable_exceptions/1/edit
  def edit
  end

  # POST /authorization/request_type_notificable_exceptions or /authorization/request_type_notificable_exceptions.json
  def create
    @authorization_request_type_notificable_exception = Authorization::RequestTypeNotificableException.new(authorization_request_type_notificable_exception_params)

    respond_to do |format|
      if @authorization_request_type_notificable_exception.save
        format.html { redirect_to authorization_request_type_notificable_exception_url(@authorization_request_type_notificable_exception), notice: "Request type notificable exception was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type_notificable_exception }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_notificable_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_type_notificable_exceptions/1 or /authorization/request_type_notificable_exceptions/1.json
  def update
    respond_to do |format|
      if @authorization_request_type_notificable_exception.update(authorization_request_type_notificable_exception_params)
        format.html { redirect_to authorization_request_type_notificable_exception_url(@authorization_request_type_notificable_exception), notice: "Request type notificable exception was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type_notificable_exception }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_notificable_exception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_type_notificable_exceptions/1 or /authorization/request_type_notificable_exceptions/1.json
  def destroy
    @authorization_request_type_notificable_exception.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_type_notificable_exceptions_url, notice: "Request type notificable exception was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type_notificable_exception
      @authorization_request_type_notificable_exception = Authorization::RequestTypeNotificableException.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_notificable_exception_params
      params.require(:authorization_request_type_notificable_exception).permit(:request_type_id, :user_id)
    end
end
