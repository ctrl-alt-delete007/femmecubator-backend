class Api::V1::LikesController < ApplicationController
    def index
        @likes = Like.all
        render json: @likes
    end
end
