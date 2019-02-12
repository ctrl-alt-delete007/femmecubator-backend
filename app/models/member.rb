class Member < ApplicationRecord
    has_secure_password
    has_many :coupons

    has_many :likes
    has_many :coupons, through: :likes

    has_many :plans
    has_many :events, through: :plans
    
    has_many :wishlists
    has_many :coupons, through: :wishlists

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, uniqueness: { case_sensitive: false } 
    
end
