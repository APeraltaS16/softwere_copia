# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :cancha
  belongs_to :user
end