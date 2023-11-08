class HomepageController < ApplicationController
  def index
    #flash[:notice] = "notice"
    #flash[:alert] = "alert"
    #flash[:error] = "error"
    #flash[:success] = "success"
    #flash[:created] = "created"
    #flash[:edited] = "edited"
    #flash[:deleted] = "deleted"
    #redirect_to Role.first , destroy: I18n.t('roles.message.destroyed')
  end

  def create
    redirect_to root_path, created: I18n.t('home.message.created')
  end

  def update
    redirect_to root_path, updated: I18n.t('home.message.updated')
  end

  def destroy
    redirect_to root_path, deleted: I18n.t('home.message.deleted')
  end

end
