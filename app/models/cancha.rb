# frozen_string_literal: true

class Cancha < ApplicationRecord
  validates :tipo, presence: true
  validates :aforo, numericality: { only_integer: true, greater_than: 0 }
  has_many :solicituds
  has_many :reviews
end
