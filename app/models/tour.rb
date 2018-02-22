# frozen_string_literal: true

class Tour < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :users, through: :bookings
end
