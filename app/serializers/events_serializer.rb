class EventsSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_date, :event_time, :venue, :address, :group_name, :url
  has_many :plans
  has_many :members, through: :plans
end
