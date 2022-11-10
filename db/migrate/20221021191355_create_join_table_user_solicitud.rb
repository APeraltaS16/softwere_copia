=begin class CreateJoinTableUserSolicitud < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :solicituds do |t|
      t.index [:user_id, :solicitud_id]
      t.index [:solicitud_id, :user_id]
    end
  end
end
 =end