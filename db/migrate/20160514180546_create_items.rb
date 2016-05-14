class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :owner
      t.string :key
      t.string :value

      t.timestamps null: false
    end
  end
end
