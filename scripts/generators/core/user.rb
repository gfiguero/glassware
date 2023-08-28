# frozen_string_literal: true

class UserScaffold
  def generate_command
    command = 'rails g scaffold aim/core/user '
    command = "#{command}serial_number:float "
    command = "#{command}name:string "
    command = "#{command}email:string:index "
    command = "#{command}encrypted_password:string "
    command = "#{command}reset_password_token:string:index "
    command = "#{command}reset_password_sent_at:datetime "
    command = "#{command}remember_created_at:datetime "
    command = "#{command}sign_in_count:integer "
    command = "#{command}current_sign_in_at:datetime "
    command = "#{command}last_sign_in_at:datetime "
    command = "#{command}current_sign_in_ip:string "
    command = "#{command}last_sign_in_ip:string "
    command = "#{command}role:string "
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}token:string "
    command = "#{command}deleted_at:datetime:index "
    command = "#{command}map_id:integer "
    command = "#{command}type:string "
    command = "#{command}rut:string "
    command = "#{command}turn:string "
    command = "#{command}address:string "
    command = "#{command}gender:string "
    command = "#{command}last_names:string "
    command = "#{command}imei:string "
    command = "#{command}username:string "
    command = "#{command}position:geometry "
    command = "#{command}zone_id:integer:index "
    command = "#{command}state:string "
    command = "#{command}state_updated_at:datetime "
    command = "#{command}phone_number:string "
    command = "#{command}external_id:string "
    command = "#{command}password_changed_at:datetime:index "
    command = "#{command}last_activity_at:datetime:index "
    command = "#{command}expired_at:datetime:index "
    command = "#{command}locked_at:datetime:index "
    command = "#{command}failed_attempts:integer "
    command = "#{command}unlock_token:string:index "
    command = "#{command}confirmation_token:string:index "
    command = "#{command}confirmed_at:datetime:index "
    command = "#{command}confirmation_sent_at:datetime:index "
    command = "#{command}unconfirmed_email:string "
    command = "#{command}provider:string "
    command = "#{command}initials:string "
    command = "#{command}tracking_report:datetime:index "
    command = "#{command}slug:string "
    command = "#{command}current_loggable_type:integer "
    command = "#{command}deactivate:boolean "
    command = "#{command}deactivation_date:date "
    command = "#{command}duration_range_id:integer "
    command = "#{command}temporary_password:boolean "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/core/user '
    @command = command
  end
end
