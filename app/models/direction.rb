# == Schema Information
#
# Table name: directions
#
#  id         :integer          not null, primary key
#  step       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#
# Indexes
#
#  index_directions_on_recipe_id  (recipe_id)
#
# Foreign Keys
#
#  recipe_id  (recipe_id => recipes.id)
#
class Direction < ApplicationRecord
  belongs_to :recipe
end
