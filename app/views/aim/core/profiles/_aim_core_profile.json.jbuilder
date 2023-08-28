json.extract!(aim_core_profile, :id, :name, :created_at, :updated_at, :description, :usage, :initial_role_ids, :created_at, :updated_at)
json.url(aim_core_profile_url(aim_core_profile, format: :json))
