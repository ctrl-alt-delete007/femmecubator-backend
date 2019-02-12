class Wishlist < ApplicationRecord
    belongs_to :member
    belongs_to :coupon
end
