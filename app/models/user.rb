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

  has_many :users_groups, -> { unscope(where: :adminable_type).where(adminable_type: 'Aim::User') }, as: :groupable, dependent: :destroy, foreign_key: :adminable_id, foreign_type: :adminable_type
  has_many :groups, through: :users_groups
  has_many :profiles, through: :groups
  has_many :roles, through: :profiles

end
