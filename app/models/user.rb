# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  accepted_privacy_at    :datetime
#  accepted_terms_at      :datetime
#  admin                  :boolean          default(FALSE)
#  company_name           :string
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  phone                  :string
#  preferences            :jsonb
#  preferred_language     :string           default("en")
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  time_zone              :string
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
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
