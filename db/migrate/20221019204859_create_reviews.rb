class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :comentario
      t.float :calificacion

      t.timestamps
    end
  end
end
