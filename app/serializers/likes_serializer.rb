class LikesSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :coupon_id
  belongs_to :member
  belongs_to :coupon
end
