class Authorization::ProvisionSuppliersController < ApplicationController
  before_action :set_authorization_provision_supplier, only: %i[ show edit update destroy ]

  # GET /authorization/provision_suppliers or /authorization/provision_suppliers.json
  def index
    @authorization_provision_suppliers = Authorization::ProvisionSupplier.all
  end

  # GET /authorization/provision_suppliers/1 or /authorization/provision_suppliers/1.json
  def show
  end

  # GET /authorization/provision_suppliers/new
  def new
    @authorization_provision_supplier = Authorization::ProvisionSupplier.new
  end

  # GET /authorization/provision_suppliers/1/edit
  def edit
  end

  # POST /authorization/provision_suppliers or /authorization/provision_suppliers.json
  def create
    @authorization_provision_supplier = Authorization::ProvisionSupplier.new(authorization_provision_supplier_params)

    respond_to do |format|
      if @authorization_provision_supplier.save
        format.html { redirect_to authorization_provision_supplier_url(@authorization_provision_supplier), notice: "Provision supplier was successfully created." }
        format.json { render :show, status: :created, location: @authorization_provision_supplier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_provision_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/provision_suppliers/1 or /authorization/provision_suppliers/1.json
  def update
    respond_to do |format|
      if @authorization_provision_supplier.update(authorization_provision_supplier_params)
        format.html { redirect_to authorization_provision_supplier_url(@authorization_provision_supplier), notice: "Provision supplier was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_provision_supplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_provision_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/provision_suppliers/1 or /authorization/provision_suppliers/1.json
  def destroy
    @authorization_provision_supplier.destroy

    respond_to do |format|
      format.html { redirect_to authorization_provision_suppliers_url, notice: "Provision supplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_provision_supplier
      @authorization_provision_supplier = Authorization::ProvisionSupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_provision_supplier_params
      params.require(:authorization_provision_supplier).permit(:provision_id, :supplier_id, :created_at, :updated_at)
    end
end
