# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Solicitud, type: :request do
  before(:all) do
    @solicitud = create(:solicitud)
    @solicitud.save
  end

  describe 'crear solicitud' do
    it 'si tiene atributos válidos' do
      expect do
        post solicitud_path, params: {
          solicitud: {
            solicitud_id: @solicitud.solicitud_id,
            cancha_id: @solicitud.cancha_id,
            usuario_id: @solicitud.usuario_id,
            descripcion: @solicitud.descripcion,
            hora_reserva: @solicitud.hora_reserva,
            dia_reserva: @solicitud.dia_reserva
          }
        }
      end.to change(Solicitud, :count).by(1)
    end
  end

  describe 'delete solicitud' do
    it 'borra solicitud si existe' do
      expect do
        delete solicitud_path(@solicitud)
      end.to change(Solicitud, :count).by(-1)
    end
  end
end
