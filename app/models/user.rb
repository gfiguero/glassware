class User < ApplicationRecord
  include SortableScopes
  include FilterScopes

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

  has_many :admin_groups, -> { unscope(where: :adminable_type).where(adminable_type: 'Aim::User') }, as: :adminable, dependent: :destroy
  has_many :groups, through: :admin_groups

end
