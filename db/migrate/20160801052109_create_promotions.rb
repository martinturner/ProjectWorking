class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.text :name
      t.text :description
      t.decimal :point_cost

      t.timestamps null: false
    end
  end
end
