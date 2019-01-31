class AddColumnCouponsMemberId < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :member_id, :integer
    add_foreign_key :coupons, :members
  end
end
