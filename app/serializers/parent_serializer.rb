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

class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :username, :password
end
