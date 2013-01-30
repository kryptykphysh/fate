class CreateAspectLinks < ActiveRecord::Migration
  def change
    create_table :aspect_links do |t|
      t.integer :aspected_id
      t.string :aspected_type
      t.integer :aspect_id
      t.text :note

      t.timestamps
    end
  end
end
