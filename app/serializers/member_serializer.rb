class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  
  has_many :coupons
  has_many :likes
  # has_many :coupons, through: :likes
  has_many :wishlists
  # has_many :coupons, through: :wishlists
  
end
