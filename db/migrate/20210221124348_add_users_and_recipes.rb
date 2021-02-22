class AddUsersAndRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.timestamps null: false
    end

    create_table :recipes do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
