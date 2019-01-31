class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :member_id
      t.integer :event_id

      t.timestamps
    end
  end
end
