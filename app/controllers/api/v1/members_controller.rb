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
            @registrationData = { first_name: members_params[:first_name], last_name: members_params[:last_name], email: members_params[:email]}
            render json: { member: @registrationData, error: 'Registration failed' }, status: :not_acceptable
        end
    end
    def update
        # byebug
        @member = Member.find(params[:user_info][:member_id])
        @member.update(members_params)
        @member.save
        @token = issue_token({ email: @member.email })
        render json: { member: MemberSerializer.new(@member), jwt: @token }
    end

    private
    def members_params
        params.require(:user_info).permit(:first_name, :last_name, :email, :password)
    end
    
end
