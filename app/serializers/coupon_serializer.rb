class CouponSerializer < ActiveModel::Serializer
  attributes :id, :coupon_code, :sponsor, :description, :expiration
  belongs_to :member
  has_many: likes
  has_many :members, through: :likes
end
