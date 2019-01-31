class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :event_date
      t.time :even_time
      t.string :venue
      t.string :addess
      t.string :group_name
      t.string :url

      t.timestamps
    end
  end
end
