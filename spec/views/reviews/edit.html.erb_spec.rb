# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reviews/edit', type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
                                comentario: 'MyString',
                                calificacion: 1.5
                              ))
  end

  it 'renders the edit review form' do
    render

    assert_select 'form[action=?][method=?]', review_path(@review), 'post' do
      assert_select 'input[name=?]', 'review[comentario]'

      assert_select 'input[name=?]', 'review[calificacion]'
    end
  end
end
