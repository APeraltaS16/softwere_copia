# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cancha, type: :request do
  before(:all) do
    @cancha = create(:cancha)
    @cancha.save
  end

  describe 'crear cancha' do
    it 'si tiene atributos válidos' do
      expect do
        post canchas_path, params: {
          cancha: {
            aforo: @cancha.aforo,
            tipo: @cancha.tipo
          }
        }
      end.to change(Cancha, :count).by(1)
    end

    it 'no funciona si no tiene aforo válido' do
      expect do
        post canchas_path, params: {
          cancha: {
            aforo: -1,
            tipo: @cancha.tipo
          }
        }
      end.to change(Cancha, :count).by(0)
    end
  end

  describe 'actualizar cancha' do
    it 'si nuevo aforo es válido' do
      patch cancha_path(@cancha), params: {
        cancha: {
          aforo: 20,
          tipo: @cancha.tipo
        }
      }
      expect(Cancha.find(@cancha.id).aforo).to eq(20)
    end

    it 'no funciona si nuevo tipo no es válido' do
      patch cancha_path(@cancha), params: {
        cancha: {
          aforo: 20,
          tipo: ''
        }
      }
      expect(Cancha.find(@cancha.id).tipo).to eq(@cancha.tipo)
    end
  end

  describe 'delete cancha' do
    it 'borra cancha si existe' do
      expect do
        delete cancha_path(@cancha)
      end.to change(Cancha, :count).by(-1)
    end
  end
end
