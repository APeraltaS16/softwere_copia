# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reviews/new', type: :view do
  before(:each) do
    assign(:review, Review.new(
                      comentario: 'MyString',
                      calificacion: 1.5
                    ))
  end

  it 'renders new review form' do
    render

    assert_select 'form[action=?][method=?]', reviews_path, 'post' do
      assert_select 'input[name=?]', 'review[comentario]'

      assert_select 'input[name=?]', 'review[calificacion]'
    end
  end
end
