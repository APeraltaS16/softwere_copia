class CreateSolicituds < ActiveRecord::Migration[6.0]
  def change
    create_table :solicituds do |t|
      t.text :descripcion
      t.date :dia_reserva
      t.time :hora_reserva

      t.timestamps
    end
  end
end
