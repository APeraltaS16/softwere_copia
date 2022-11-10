# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Solicitud, type: :model do
  describe '#factory' do
    it 'is valid' do
      expect(build(:solicitud)).to be_valid
    end
  end
end
