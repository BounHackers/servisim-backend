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

require 'rails_helper'

RSpec.describe Kid, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
