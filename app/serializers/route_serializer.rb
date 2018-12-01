# frozen_string_literal: true

# == Schema Information
#
# Table name: routes
#
#  id         :bigint(8)        not null, primary key
#  kid_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RouteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :kid
  has_one :driver
end
