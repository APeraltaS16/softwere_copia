# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reviews/show', type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
                                comentario: 'Comentario',
                                calificacion: 2.5
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Comentario/)
    expect(rendered).to match(/2.5/)
  end
end
