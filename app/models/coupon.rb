class Coupon < ApplicationRecord
    belongs_to :members
    has_many :likes, dependent: :destroy
    has_many :members, through: :likes

end
