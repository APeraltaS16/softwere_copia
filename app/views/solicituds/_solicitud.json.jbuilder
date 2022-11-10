json.extract! solicitud, :id, :solicitud_id, :usuario_id, :cancha_id, :descripcion, :dia_reserva, :hora_reserva, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
