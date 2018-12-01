# == Schema Information
#
# Table name: drivers
#
#  id         :bigint(8)        not null, primary key
#  school_id  :bigint(8)
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :driver do
    school nil
    username "MyString"
    password "MyString"
  end
end
