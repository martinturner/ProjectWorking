class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.text :company_name
      t.text :company_type

      t.timestamps null: false
    end
  end
end
