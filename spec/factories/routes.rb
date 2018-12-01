# == Schema Information
#
# Table name: routes
#
#  id         :bigint(8)        not null, primary key
#  kid_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :route do
    kid nil
    driver nil
  end
end
