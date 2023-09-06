class Authorization::ScannedFrameSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :map_id, :frame_text, :format_type
end
