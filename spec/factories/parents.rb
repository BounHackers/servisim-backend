# frozen_string_literal: true

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

FactoryBot.define do
  factory :parent do
    name 'MyString'
    age 'MyString'
    location 'MyString'
    username 'MyString'
    password 'MyString'
  end
end
