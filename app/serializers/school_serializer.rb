# frozen_string_literal: true

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

class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :kids
  has_many :drivers
end
