class Authorization::ProvisionsController < ApplicationController
  before_action :set_authorization_provision, only: %i[ show edit update destroy ]

  # GET /authorization/provisions or /authorization/provisions.json
  def index
    @authorization_provisions = Authorization::Provision.all
  end

  # GET /authorization/provisions/1 or /authorization/provisions/1.json
  def show
  end

  # GET /authorization/provisions/new
  def new
    @authorization_provision = Authorization::Provision.new
  end

  # GET /authorization/provisions/1/edit
  def edit
  end

  # POST /authorization/provisions or /authorization/provisions.json
  def create
    @authorization_provision = Authorization::Provision.new(authorization_provision_params)

    respond_to do |format|
      if @authorization_provision.save
        format.html { redirect_to authorization_provision_url(@authorization_provision), notice: "Provision was successfully created." }
        format.json { render :show, status: :created, location: @authorization_provision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_provision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/provisions/1 or /authorization/provisions/1.json
  def update
    respond_to do |format|
      if @authorization_provision.update(authorization_provision_params)
        format.html { redirect_to authorization_provision_url(@authorization_provision), notice: "Provision was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_provision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_provision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/provisions/1 or /authorization/provisions/1.json
  def destroy
    @authorization_provision.destroy

    respond_to do |format|
      format.html { redirect_to authorization_provisions_url, notice: "Provision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_provision
      @authorization_provision = Authorization::Provision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_provision_params
      params.require(:authorization_provision).permit(:name, :description, :created_at, :updated_at)
    end
end
