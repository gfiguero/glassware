class Authorization::RequestSerializer < ActiveModel::Serializer
  attributes :id, :requester_id, :request_type_id, :interest_point_id, :interest_point_type, :state, :from_time, :until_time, :from_time_num, :until_time_num, :created_at, :updated_at, :map_id, :requester_kind, :requester_role, :requester_comments, :supplier_comments, :comments, :supplier_id, :requester_identification, :requester_name, :requester_phone, :requester_email, :authorized_at, :for_mall, :payroll_workers_file_name, :payroll_workers_content_type, :payroll_workers_file_size, :payroll_workers_updated_at, :slug, :start_working_hour, :end_working_hour, :mixed, :requester_type, :deleted_at, :completion_time
end
