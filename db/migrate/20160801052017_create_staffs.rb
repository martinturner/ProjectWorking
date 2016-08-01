class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.text :first_name

      t.timestamps null: false
    end
  end
end
