class RemoveTypeFromAspects < ActiveRecord::Migration
  def up
    remove_column :aspects, :type
  end

  def down
    add_column :aspects, :type, :string
  end
end
