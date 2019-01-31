class Api::V1::PlansController < ApplicationController
    def index
        @plans = Plan.all
        render json: @plans
    end
end
