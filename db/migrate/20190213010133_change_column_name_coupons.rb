class ChangeColumnNameCoupons < ActiveRecord::Migration[5.2]
  def change
    rename_column :coupons, :member_id, :creator_id
  end
end
