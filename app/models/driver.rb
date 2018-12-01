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
end
