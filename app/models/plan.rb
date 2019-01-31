class Plan < ApplicationRecord
    belongs_to :members
    belongs_to :events
end
