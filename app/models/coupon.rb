class Coupon < ApplicationRecord
    belongs_to :creator, class_name: "Member"

    has_many :wishlists
    has_many :members, through: :wishlists
    
    # has_many :likes, dependent: :destroy
    # has_many :members, through: :likes

end
