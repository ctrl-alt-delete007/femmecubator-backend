class CouponSerializer < ActiveModel::Serializer
  attributes :id, :coupon_code, :sponsor, :description, :expiration
  belongs_to :creator, class_name: "Member"

  has_many :wishlists
  has_many :members, through: :wishlists
end
