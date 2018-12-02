# frozen_string_literal: true

# == Schema Information
#
# Table name: kids
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  location   :string
#  username   :string           not null
#  password   :string           not null
#  parent_id  :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Kid < ApplicationRecord
  belongs_to :parent
  has_and_belongs_to_many :routes
  has_and_belongs_to_many :schools

  before_save :create_hashed_password, if: :password_changed?

  def create_hashed_password
    # validation code not shown
    self.password = BCrypt::Password.create(password).to_s
  end
end
