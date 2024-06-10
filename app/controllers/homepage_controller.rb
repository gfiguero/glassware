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
    respond_to do |format|
      format.html { redirect_to root_path, created: I18n.t('home.message.created') }
      format.turbo_stream do
        flash.now[:created] = I18n.t('home.message.created')
        render turbo_stream: [
          turbo_stream.before(:notification, partial: 'layouts/shared/notification_row')
        ]
      end
    end
  end

  def update
    respond_to do |format|
      format.html { redirect_to root_path, updated: I18n.t('home.message.updated') }
      format.turbo_stream do
        flash.now[:updated] = I18n.t('home.message.updated')
        render turbo_stream: [
          turbo_stream.before(:notification, partial: 'layouts/shared/notification_row')
        ]
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to root_path, deleted: I18n.t('home.message.deleted') }
      format.turbo_stream do
        flash.now[:deleted] = I18n.t('home.message.deleted')
        render turbo_stream: [
          turbo_stream.before(:notification, partial: 'layouts/shared/notification_row')
        ]
      end
    end
  end

end
