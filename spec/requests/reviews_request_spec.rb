# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :request do
  before(:all) do
    @review = create(:review)
    @review.save
  end

  describe 'crear review' do
    it 'si tiene atributos válidos' do
      expect do
        post review_path, params: {
          review: {
            comentario: @review.cometario,
            calificacion: @review.calificacion
          }
        }
      end.to change(Review, :count).by(1)
    end

    it 'no funciona si no tiene calificacion válido' do
      expect do
        post review_path, params: {
          review: {
            comentario: @review.cometario,
            calificacion: -1
          }
        }
      end.to change(Review, :count).by(0)
    end
  end

  describe 'actualizar review' do
    it 'si nuevo aforo es válido' do
      patch review_path(@review), params: {
        review: {
          comentario: @review.cometario,
          calificacion: 5
        }
      }
      expect(Review.find(@review.id).calificacion).to eq(5)
    end
  end
  describe 'delete review' do
    it 'borra review si existe' do
      expect do
        delete review_path(@review)
      end.to review(review, :count).by(-1)
    end
  end
end
