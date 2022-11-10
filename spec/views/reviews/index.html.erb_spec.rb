# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reviews/index', type: :view do
  before(:each) do
    assign(:reviews, [
             Review.create!(
               comentario: 'Comentario',
               calificacion: 2.5
             ),
             Review.create!(
               comentario: 'Comentario',
               calificacion: 2.5
             )
           ])
  end

  it 'renders a list of reviews' do
    render
    assert_select 'tr>td', text: 'Comentario'.to_s, count: 2
    assert_select 'tr>td', text: 2.5.to_s, count: 2
  end
end
