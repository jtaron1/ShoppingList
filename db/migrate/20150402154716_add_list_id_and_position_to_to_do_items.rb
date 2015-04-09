class AddListIdAndPositionToToDoItems < ActiveRecord::Migration
  def change
    add_column :to_do_items, :list_id, :integer
    add_column :to_do_items, :position, :integer
  end
end
