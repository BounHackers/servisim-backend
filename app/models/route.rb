# == Schema Information
#
# Table name: routes
#
#  id         :bigint(8)        not null, primary key
#  kid_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Route < ApplicationRecord
  has_and_belongs_to_many :kids
  belongs_to :driver
end