# frozen_string_literal: true

class Asset < ApplicationRecord
  has_many_attached :images
  TYPES = %w[house complex\ building commecial\ unit].freeze
end
