class Aim::Authorization::HistoryStateSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :state, :state_translate, :date
end
