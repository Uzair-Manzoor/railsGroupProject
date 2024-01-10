class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
    t.string "name"
    t.text "description"
    t.integer "preparation_time"
    t.integer "cooking_time"
    t.boolean "is_public" 
    t.references :user, foreign_key: true
    t.timestamps
    end
  end
end
