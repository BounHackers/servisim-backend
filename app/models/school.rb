# == Schema Information
#
# Table name: schools
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ApplicationRecord
  has_and_belongs_to_many :kids
  has_many :drivers
end
