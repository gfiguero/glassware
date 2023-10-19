class User < ApplicationRecord

  def self.devise_modules
    modules = []
    modules << :database_authenticatable
    modules << :registerable
    modules << :recoverable
    modules << :rememberable
    modules << :validatable
    modules << :confirmable
    modules << :lockable
    modules << :timeoutable
    modules << :trackable
    modules
  end

  devise *self.devise_modules

  self.table_name = "aim_users"
end
