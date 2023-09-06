class Authorization::RequestVehicleSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :vehicle_id, :created_at, :updated_at
end
