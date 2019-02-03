class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create
        @member = Member.find_by(email: auth_params[:email])
        if @member && @member.authenticate(auth_params[:password])
            @token = issue_token(@member.email)
            render json: { member: MemberSerializer.new(@member), jwt: @token }, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private

    def auth_params
        params.require(:login_info).permit(:email, :password)
    end
end
