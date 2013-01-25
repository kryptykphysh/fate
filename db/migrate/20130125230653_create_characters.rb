class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :story_id
      t.string :name
      t.integer :physical_stress
      t.integer :mental_stress
      t.text :description
      t.integer :refresh
      t.text :character_idea
      t.text :phase_trio_one
      t.text :phase_trio_two
      t.text :phase_trio_three

      t.timestamps
    end
  end
end
