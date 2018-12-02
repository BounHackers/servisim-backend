# frozen_string_literal: true
# == Schema Information
#
# Table name: drivers
#
#  id         :bigint(8)        not null, primary key
#  school_id  :bigint(8)
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  vehicle_id :string
#

class Driver < ApplicationRecord
  belongs_to :school
  has_many :routes

  before_save :create_hashed_password, if: :password_changed?

  def create_hashed_password
    # validation code not shown
    self.password = BCrypt::Password.create(password).to_s
  end
end
