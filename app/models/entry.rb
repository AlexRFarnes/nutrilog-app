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
class Entry < ApplicationRecord
    belongs_to :category
    validates :calories, :proteins, :carbohydrates, :fats, :meal_type, :category_id, presence: true

    def day
        self.created_at.strftime("%b %e, %Y")
    end
end
