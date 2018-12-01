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

require 'rails_helper'

RSpec.describe Route, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
