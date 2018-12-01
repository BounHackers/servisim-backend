# frozen_string_literal: true

class CreateSchoolsKidsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :schools, :kids do |t|
      t.index :school_id
      t.index :kid_id
    end
  end
end
