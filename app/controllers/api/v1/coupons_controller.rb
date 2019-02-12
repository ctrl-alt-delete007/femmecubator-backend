class Api::V1::CouponsController < ApplicationController
    def index
        # byebug
        @coupons = Coupon.all
        render json: {coupons: @coupons}
    end
    
    def create
        @coupon = Coupon.create(coupons_params)
        render json: {coupon: CouponSerializer.new(@coupon)}
    end

    private
    def coupons_params
        params.require(:coupon_info).permit(:coupon_code, :sponsor, :description, :expiration, :member_id)
    end
end
