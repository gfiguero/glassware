module Aim
  module Core
    class RolesController < ApplicationController
      before_action :set_aim_core_role, only: [:show, :edit, :update, :destroy]

      # GET /aim/core/roles or /aim/core/roles.json
      def index
        @aim_core_roles = Aim::Core::Role.all
      end

      # GET /aim/core/roles/1 or /aim/core/roles/1.json
      def show; end

      # GET /aim/core/roles/new
      def new
        @aim_core_role = Aim::Core::Role.new
      end

      # GET /aim/core/roles/1/edit
      def edit; end

      # POST /aim/core/roles or /aim/core/roles.json
      def create
        @aim_core_role = Aim::Core::Role.new(aim_core_role_params)

        respond_to do |format|
          if @aim_core_role.save
            format.html { redirect_to(aim_core_role_url(@aim_core_role), notice: 'Role was successfully created.') }
            format.json { render :show, status: :created, location: @aim_core_role }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @aim_core_role.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /aim/core/roles/1 or /aim/core/roles/1.json
      def update
        respond_to do |format|
          if @aim_core_role.update(aim_core_role_params)
            format.html { redirect_to(aim_core_role_url(@aim_core_role), notice: 'Role was successfully updated.') }
            format.json { render :show, status: :ok, location: @aim_core_role }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @aim_core_role.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /aim/core/roles/1 or /aim/core/roles/1.json
      def destroy
        @aim_core_role.destroy

        respond_to do |format|
          format.html { redirect_to(aim_core_roles_url, notice: 'Role was successfully destroyed.') }
          format.json { head :no_content }
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_aim_core_role
        @aim_core_role = Aim::Core::Role.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def aim_core_role_params
        params.require(:aim_core_role).permit(:name, :created_at, :updated_at, :usage)
      end
    end
  end
end
