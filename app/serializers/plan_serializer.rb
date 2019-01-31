class PlanSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :event_id
  belongs_to :member
  belongs_to :event
end
