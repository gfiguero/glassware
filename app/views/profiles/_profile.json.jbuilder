json.extract! profile, :id, :name, :description, :usage, :initial_role_ids, :roles_id, :groups_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
