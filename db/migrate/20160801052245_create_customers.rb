class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :national_id

      t.timestamps null: false
    end
  end
end
