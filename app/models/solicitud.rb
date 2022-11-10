# frozen_string_literal: true

class Solicitud < ApplicationRecord
  validates :descripcion, :dia_reserva, :hora_reserva, presence: true

  belongs_to :user
  # belongs_to :cancha
end
