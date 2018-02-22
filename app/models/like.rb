# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :tour
end
