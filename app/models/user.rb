class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :trackable

  has_person_name

  attribute :terms_of_service

  validates :first_name, :last_name, presence: true
  validates :terms_of_service, presence: true, acceptance: true, on: [:create]
  after_validation :accept_terms, on: [:create]
  after_validation :accept_privacy, on: [:create]

  def accept_terms
    self.accepted_terms_at = Time.zone.now
  end

  def accept_privacy
    self.accepted_privacy_at = Time.zone.now
  end
end
