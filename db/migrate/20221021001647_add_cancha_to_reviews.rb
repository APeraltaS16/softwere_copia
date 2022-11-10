class AddCanchaToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :cancha, null: false, foreign_key: true
  end
end
