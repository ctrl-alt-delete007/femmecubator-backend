class Api::V1::MembersController < ApplicationController
    def index
        @members = Member.all
        render json: @members
    end
end
