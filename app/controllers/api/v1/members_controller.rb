class Api::V1::MembersController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]
    def index
        @members = Member.all
        render json: @members
    end
    def create
        @member = Member.create(members_params)
        if @member.valid?
            @token = issue_token({ email: @member.email})
            render json: { member: MemberSerializer.new(@member), jwt: @token }, status: :created
        else
            render json: { error: 'Registration failed' }, status: :not_acceptable
        end
    end
    def update
        @member = Member.find(params[:user_info][:id])
        @member.update(members_params)
        @member.save
        @token = issue_token({ email: @member.email })
        render json: { member: @member, jwt: @token }
    end

    private
    def members_params
        params.require(:user_info).permit(:first_name, :last_name, :email, :password)
    end
    
end
