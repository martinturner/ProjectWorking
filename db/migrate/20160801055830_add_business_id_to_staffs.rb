class AddBusinessIdToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :business_id, :integer
  end
end
