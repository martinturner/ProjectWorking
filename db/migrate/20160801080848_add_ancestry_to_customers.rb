class AddAncestryToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :ancestry, :string
    add_index :customers, :ancestry
  end
end
