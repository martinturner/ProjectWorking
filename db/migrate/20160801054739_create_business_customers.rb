class CreateBusinessCustomers < ActiveRecord::Migration
  def change
    create_table :business_customers do |t|
      t.references :business, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
