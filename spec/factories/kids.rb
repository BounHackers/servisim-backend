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

FactoryBot.define do
  factory :kid do
    name 'MyString'
    location 'MyString'
    username 'MyString'
    password 'MyString'
  end
end
