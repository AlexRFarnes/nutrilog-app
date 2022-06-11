# == Schema Information
#
# Table name: entries
#
#  id            :bigint           not null, primary key
#  calories      :integer
#  carbohydrates :integer
#  fats          :integer
#  meal_type     :string
#  proteins      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :bigint
#
# Indexes
#
#  index_entries_on_category_id  (category_id)
#
require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Dinner", calories: 450, carbohydrates: 25, proteins: 25, fats: 15)
    assert entry.save
  end
end
