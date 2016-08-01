class AddAncestryDepthToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :ancestry_depth, :integer, :default => 0
  end
end
