# frozen_string_literal: true
# == Schema Information
#
# Table name: routes
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  driver_id  :bigint(8)
#  start_time :datetime
#

class RouteSerializer < ActiveModel::Serializer
  attributes :id, :start_time
  has_many :kids
  belongs_to :driver
end
