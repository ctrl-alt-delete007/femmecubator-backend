class Api::V1::CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        render json: {coupons: @coupons}
    end
    
    def create
        # byebug
        @coupon = Coupon.create(coupons_params)
        render json: {coupon: CouponSerializer.new(@coupon)}
    end

    private
    def coupons_params
        params.require(:coupon_info).permit(:coupon_code, :sponsor, :description, :expiration, :creator_id)
    end
end
