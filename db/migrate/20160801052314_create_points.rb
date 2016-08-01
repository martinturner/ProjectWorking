class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.decimal :current_point

      t.timestamps null: false
    end
  end
end
