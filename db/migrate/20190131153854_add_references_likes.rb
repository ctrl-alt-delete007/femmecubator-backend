class AddReferencesLikes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :likes, :coupons
    add_foreign_key :likes, :members
  end
end
