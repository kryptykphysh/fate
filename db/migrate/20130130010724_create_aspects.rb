class CreateAspects < ActiveRecord::Migration
  def change
    create_table :aspects do |t|
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
