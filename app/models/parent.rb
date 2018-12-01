# frozen_string_literal: true

# == Schema Information
#
# Table name: parents
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  location   :string
#  username   :string           not null
#  password   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Parent < ApplicationRecord
  has_many :kids, dependent: :destroy

  before_save :create_hashed_password, if: :password_changed?

  def create_hashed_password
    # validation code not shown
    self.password = BCrypt::Password.create(password).to_s
  end
end
