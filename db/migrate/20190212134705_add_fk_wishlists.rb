class AddFkWishlists < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :wishlists, :members
    add_foreign_key :wishlists, :coupons
  end
end
