class CreateFishTypes < ActiveRecord::Migration
  def change
    create_table :fish_types do |t|
      t.string :name
      t.integer :display_weight

      t.timestamps
    end
  end
end
