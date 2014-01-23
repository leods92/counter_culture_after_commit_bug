class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :children_count, default: 0, null: false

      t.timestamps
    end
  end
end
