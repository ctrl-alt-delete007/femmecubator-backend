class AddReferencesPlans < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :plans, :events
    add_foreign_key :plans, :members
  end
end
