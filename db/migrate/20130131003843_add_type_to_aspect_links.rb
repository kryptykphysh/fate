class AddTypeToAspectLinks < ActiveRecord::Migration
  def change
    add_column :aspect_links, :type, :string
  end
end
