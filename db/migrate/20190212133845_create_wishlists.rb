class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.integer :member_id
      t.integer :coupon_id

      t.timestamps
    end
  end
end
