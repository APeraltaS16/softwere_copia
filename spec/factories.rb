# frozen_string_literal: true

require 'factory_bot'
FactoryBot.define do
  factory :review do
    comentario { 'MyString' }
    calificacion { 1.5 }
  end

  factory :cancha do
    aforo { 20 }
    tipo { 'Tenis' }
  end

  factory :solicitud do
    solicitud_id { 2 }
    usuario_id { 3 }
    cancha_id { 7 }
    descripcion { 'quiero esta cancha' }
    dia_reserva { 0o001 - 0o3 - 0o2 }
    hora_reserva { DateTime.new(2012, 8, 29, 22, 35, 0) }
  end
end
