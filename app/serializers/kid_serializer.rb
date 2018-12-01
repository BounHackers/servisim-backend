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

class KidSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :username
  belongs_to :parent
  has_many :routes
  has_many :schools
end
