class CreateCanchas < ActiveRecord::Migration[6.0]
  def change
    create_table :canchas do |t|
      t.integer :aforo
      t.string :tipo

      t.timestamps
    end
  end
end
