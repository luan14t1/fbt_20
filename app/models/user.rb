# frozen_string_literal: true

class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true,
    length: {maximum: Settings.user.name.max_length}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.user.email.max_length},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  VALID_PHONE_REGEX = /\d[0-9]\)*\z/i
  validates :phone, presence: true,
    length: {minimum: Settings.user.phone.min_length},
    format: {with: VALID_PHONE_REGEX}
  validates :address, presence: true,
    length: {minimum: Settings.user.address.min_length}
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.user.password.min_length},
    allow_nil: true
end
