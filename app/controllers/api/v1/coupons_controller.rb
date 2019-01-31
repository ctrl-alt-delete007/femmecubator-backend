class Api::V1::CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        render json: @coupons
    end
end
