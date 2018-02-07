# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tours, dependent: :destroy
  validates :name, presence: true, length: {maximum: Settings.category.name.max_length}
end
