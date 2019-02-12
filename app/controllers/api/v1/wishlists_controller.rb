class Api::V1::WishlistsController < ApplicationController
    def create
        @wishlist = Wishlist.create(wishlists_params)
        render json: { wishlist: @wishlist }
    end

    private
    def wishlists_params
        params.require(:wishlist).permit(:member_id, :coupon_id)
    end
end
