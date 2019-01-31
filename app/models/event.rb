class Event < ApplicationRecord
    has_many :plans, dependent: :destroy
    has_many :members, through: :plans
end
