class AddSchoolIdToChildren < ActiveRecord::Migration
  def change
    add_column :children, :school_id, :integer
  end
end
